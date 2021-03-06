import sys
import datetime
import pandas as pd
import re
from sqlalchemy import Column, ForeignKey, Integer, String, MetaData, Table, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine
logs_entries = []
err=[]

try: file = open(sys.argv[1], 'r')
except: file = open('logfile.log', 'r')

for lines in file:
    line = re.compile(r'^((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+\d{1,2}\s+\d{2}:\d{2}:\d{2})\s+(\S+)\s+(sshd)\S+:\s+(.*?(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}).*)$').search(lines)
    e=re.findall(r'Failed.+',lines)
    if line:
        if e: err.append({"ip_address": line.group(6), "error": e})    
        datetime_str = line.group(1) + " " +str(datetime.datetime.now().year)
        datetime_obj = datetime.datetime.strptime(datetime_str,'%b %d %H:%M:%S %Y')
        logs_entries.append({"hostname": line.group(3),"ip_address": line.group(6), "date_time": datetime_obj,"message": line.group(5)})
file.close()
df = pd.DataFrame(logs_entries)
# df["hostname"].mask(df["hostname"].duplicated(),inplace=True)
# df["ip_address"].mask(df["ip_address"].duplicated(),inplace=True)
df.sort_values(by=['ip_address'], inplace=True)
df.to_excel("access_logs.xlsx")
df = pd.DataFrame(err)
df.sort_values(by=['ip_address'], inplace=True)
df.to_excel("error_logs.xlsx")


# Base = declarative_base()
# meta = MetaData()
# engine = create_engine('sqlite:///collection.db', echo = True)
# access_logs =[]

# access_logs = Table(
# meta,
# Column('id', Integer, primary_key = True),
# Column('hostname', String),
# Column('ip_address', String),
# Column('date_time', DateTime),
# Column('message', String),)
# meta.create_all(engine)

#         conn = engine.connect()
#         ins = access_logs.insert().values(hostname = line.group(3), ip_address = line.group(6), date_time = datetime_obj, message = line.group(5))
#         result = conn.execute(ins)
#         result = conn.execute(access_logs.insert(None),logs_entries)
# conn.close()
