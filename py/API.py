from pydash import at
import csv, requests
import glob
a=[]
b=[]
f=[]
s='*.csv'
c=1
s=glob.glob(s)
for z in s:
     b.append(z.replace('_', '').replace('.csv', ''))

for y in b:
    while True:
        
      
        url = 'http://{}&page={}'.format(y,c)
        print(url)
        response = requests.get(url)
        if response.status_code ==200:
            c+=1
            l = (at(response.json(), 'page')[0]['tenants'])
                    

            for u in l:
                
                for i in u.values():
                    if isinstance(i, list):
                        for j in i:
                            if isinstance(j, dict):
                                for t in j.values():
                                    if isinstance(t, list):
                                        f.append('\n')
                                    else: f.append(t)
                            else: f.append(j)
                    else: f.append(i)

                with open('state_{}.csv'.format(y), 'a') as file:
                    file.write(','.join([str(elem) for elem in f]).replace('\n,', '\n').replace(',\n', '\n'))
                    f.clear()
                    
        else:
            c=1
            break
