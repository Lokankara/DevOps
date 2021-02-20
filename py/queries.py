from time import sleep
import requests
def request_local_server(login, password):
    data ={'login': login, 'password': password}
    res = requests.post('http://127.0.0.1:5000/auth', json=data)
    if res.status_code == 200:
        print('success', password)
    return True
        
    
def request_local_server_protected(login, password):
    data ={'login': login, 'password': password}
    c=3
    for i in range(c):
        try:
            res = requests.post('http://127.0.0.1:4000/auth', json=data)
            if res.status_code == 200:
                return True
            elif res.status_code == 401:
                return False
        except: pass
        if i != c-1: sleep(1)
    return False
