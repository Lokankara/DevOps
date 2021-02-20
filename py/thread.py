from pydash import at
import os, json
import urllib.request
import requests
from threading import Thread
 
class DownloadThread(Thread):
   
    def __init__(self, url):
        Thread.__init__(self)
        self.url = url
    
    def run(self):
        response = requests.get(self.url)
        d = requests.get(self.url).json()['page']['tenants']

        l = (response.json())
##        l=l[0][0]
        print(d)
        
# handle = urllib.request.urlopen(self.url)
#        fname = os.path.basename(self.url)
#        for i in range(2):
#            chunk = handle.read(1024)
#            print(chunk)
        
     
        
##        with open('{}.json'.format(fname), "wb") as f_handler:
##            while True:
##                chunk = handle.read(1024)
##                if not chunk: break
##                f_handler.write(chunk)
         
def main(urls):
    
    for item, url in enumerate(urls):
        thread = DownloadThread(url)
        thread.start()
        
 
if __name__ == "__main__":
    urls =[

    'https://www.google.com/',
       'https://www.ebay.com/',
       'https://www.facebook.com/',
       'https://www.youtube.com/',
       'https://pogliad.ua/']
    main(urls)

