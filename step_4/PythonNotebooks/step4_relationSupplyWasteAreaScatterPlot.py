import pandas as pd
import mysql.connector
import plotly.express as px

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="mysql123",
  database="cs306"
)

mycursor = mydb.cursor()
mycursor.execute(
  """
    SELECT *
    FROM (
      SELECT s.country, SUM(s.weight_t) AS supply_chain_waste, c.area_ha
      FROM supply_chain_waste AS s
      JOIN countries AS c ON c.name = s.country
      WHERE s.weight_t IS NOT NULL
      GROUP BY c.name
    ) AS waste_and_area
    WHERE area_ha < 10000000;
  """
)

df = pd.DataFrame(columns=["Country", "Area (ha)", "Supply Chain Waste (t)"])

for country, waste, area in mycursor:
    tmp = pd.DataFrame(
            [{"Country": country, "Supply Chain Waste (t)": waste, "Area (ha)": area}])
    df = pd.concat([df, tmp], axis=0, ignore_index=True)

fig = px.scatter(df, x="Area (ha)", y="Supply Chain Waste (t)", hover_data=["Country"])
fig.show()
