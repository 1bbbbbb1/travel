import pandas as pd
import pymysql

from config import Config

conn = pymysql.connect(
    host=Config.HOST,
    user=Config.USER,
    password=Config.PASSWORD,
    database=Config.DATABASE,
)

cursor = conn.cursor()

sql = 'insert into home_travelinfo(unique_id,area,name,review_count,rating,is_ad,is_recommended,city,image_url,distance_from_center,tags,' \
    'detail_link,market_price,discount_price,discount_description,actual_price,price_type,price_type_description,is_free,longitude,latitude,popularity_score,province)' \
    'values(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)'

df = pd.read_csv('data_pro.csv').fillna('暂无')
for index, row in df.iterrows():
    cursor.execute(sql, (tuple(row)))

conn.commit()
cursor.close()
conn.close()