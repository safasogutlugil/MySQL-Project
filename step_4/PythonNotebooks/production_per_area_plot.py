import mysql.connector
import pycountry
import plotly.express as px
import pandas as pd

cnx = mysql.connector.connect(user='root', password='1846',
                              host='127.0.0.1',
                              database='cs306')

cursor = cnx.cursor()
cursor.execute(
    '''SELECT country_name, AVG(production_t/area_ha)
     FROM crops as cr 
     JOIN countries as co on co.name = cr.country_name 
     GROUP BY country_name'''
)

df = pd.DataFrame(columns=["Country", "iso_alpha",
                  "Production Per Area (tonnes/ha)"])

for (country, export) in cursor:
    c = pycountry.countries.get(name=country)
    if c is None:
        c = pycountry.countries.get(common_name=country)
    try:
        tmp = pd.DataFrame(
            [{"Country": country, "iso_alpha": c.alpha_3, "Production Per Area (tonnes/ha)": float(export)}])
        df = pd.concat([df, tmp], axis=0, ignore_index=True)
    except:
        continue


fig = px.choropleth(df, locations="iso_alpha",
                    color="Production Per Area (tonnes/ha)",
                    hover_name="Country",  # column to add to hover information
                    color_continuous_scale=px.colors.sequential.Emrld)
fig.show()
