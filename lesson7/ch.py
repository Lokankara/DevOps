import pandas as pd
df = pd.read_csv('to/file', sep='\t', index='Name of column with index')  # Guessing that your file is tab separated
df.sort_index(inplace=True)


fn = 'filename.txt'
sorted_fn = 'sorted_filename.txt'

with open(fn,'r') as first_file:
    rows = first_file.readlines()
    sorted_rows = sorted(rows, key=lambda x: int(x.split()[0]), reverse=False)
    with open(sorted_fn,'w') as second_file:
        for row in sorted_rows:
            second_file.write(row)


a=[]
c=0
import pandas as pd
import numpy as np
import re
##
##with open ("logfile.log", 'r') as file:
##  for lines in file:
##    l=re.findall(r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}',lines)
##    if l:
##      [a.append(x) for x in l if x not in a ]
##      #print(lines)
##with open('new_logs.txt', 'w') as outf:
##  for z in a:
##    outf.write(z+'\r')

##log = pd.read_table('logfile.log',header=None)
##ip = open('new_logs.txt')
##for x in ip: 
##  #print(x[:-1])
##  #break
##  for index, row in log.iterrows():
##    for z in row:
##      if (x[:-1]) in z:
##        print(x[:-1]+" " + z+'\r')
##      

##outf = open('filtred_logs.txt', 'a')
##log = pd.read_table('logfile.log',header=None)
##for index, row in log.iterrows():
##  for z in row:
##    l=re.findall(r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}',z)
##    if l:
##      outf.write(l[0]+' '+z+'\r')
##outf.close()


def my_sort(line): 
    line_fields = line.strip().split('.') 
    amount = int(line_fields[2])
    print(amount)
    return amount 
  

fp = open('filtred_logs.txt') 
contents = fp.readlines() 
  
contents.sort(key=my_sort) 

##for line in contents: 
##    print(line) 
      
fp.close()


##lines_seen = set() # holds lines already seen
##with open("filtred_logs_filtr.txt", "w") as output_file:
##	for each_line in open("filtred_logs.txt", "r"):
##	    if each_line not in lines_seen:
##	        output_file.write(each_line)
##	        lines_seen.add(each_line)
	        

#log.close()
##with open('filtred_logs.txt', 'r') as r:
##    for line in sorted(r):
##        print(line, end='')


##          outf.write(x[:-1]+" " + z+'\r')      
 
##    if l: 
##      print(l[0], x)
      
    

    
##  c+=1
##  if c > 10:
##    break


##with open('new_logs.txt', 'r') as outf:
##    for x in outf:
##      b.append(x.split(' '))
#print(b)  
##    
#for index, row in log.iterrows():
##  c+=1
##  if c> 100: break
##  for j in row:
##   print(j)
  


#print(log)
#.to_string().split(' ')
    

  
##test_list = list(set(a)) 
##print(len(a), len(test_list))

##import pandas as pd
##import numpy as np
#import sys
##logs=[]
##path='d:\softserve_devops\devops_crash\lesson6\dava_gen.csv'
##file = open(path, 'r')

  #if c==100:break
##  line = re.compile(r'\d{1,3}\.\d{1,3}\.\d{1,3}').search(lines)
##  if line:
##    datetime_str =line.group(1) + str(datatime.datatime.now().year)
##

##df.to_excel("out/access_logs.xlsx")
##
##df['hostname'].mask(df['hostname']).duplicated(), inplace=True)
##df['ip_address'].mask(df['ip_address']).duplicated(), inplace=True)
