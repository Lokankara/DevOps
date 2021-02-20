import webbrowser
import requests
from bs4 import BeautifulSoup
cars=[]
u=''
a=[]
URL='https://www.olx.ua/chernovtsy/q-%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0/'
HOST = 'https://www.olx.ua/'
HEADERS = {'user-agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0',
           'accert': '*/*'}

def get_html(URL, params=None):
    return requests.get(URL, headers=HEADERS, params =params)
    
def get_content(html):
    soup= BeautifulSoup(html, 'html.parser')
    items = soup.find_all('', class_='wrap')

    
    for i in items:
        cars.append({
            #'div': i.find('img', class_='fleft'),
            'title': i.find('div', class_='space rel').get_text(strip=True),
            #'zaq': i.find('a', class_='fleft' ),
            'link': i.find('a' ).get('href'),
            #'p': i.find('strong', class_='price' )
            })

    for c in cars:
        for b in c.values():

            if isinstance(b, str):
                
                print(b)
                #webbrowser.open(b, new=0)
                
            else:pass
                #print(b.text)
                
            #
        #break
       #print(c, type(c))
            #print(k, type(k))
       

           
       

def parse():
    html = get_html(URL)
    if (html.status_code) == 200:
        get_content(html.text)
        
    else: print('error')
    
parse()
