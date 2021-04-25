# from googletrans import Translator
# result = translator.translate('Mikä on nimesi')

# print(result.src)
# print(result.dest)
# print(result.text)

from googletrans import Translator, constants
translator = Translator()
from random import randint

a=["I'm","I'm","I'm"]
b=["he's","she's","it's"]
c=["we're","you're","they're"]
q=['What','How']
d='do'
ds='does'
v=['driving','working','getting','reading','speaking','hidding','taking','feelling']
s=['a car','hard today', 'late','a really good book','on the phone','behind a tree','a photo','good']
x=[]
z=[]
def ra():
    while (len(z)<len(v)):
        o=randint(0, len(v)-1)
        if o not in z:
            z.append(o)
        # print(o,z)
ra()
i=z[0]
x.append(translator.translate(f'{a[0]} {v[i]} {s[i]}',dest='ru').text)
for i in range(3):
     r=z[i+1]
     x.append(translator.translate(f'{b[i]} {v[r]} {s[r]}',dest='ru').text)
for i in range(3):
     r=z[i+4]
     x.append(translator.translate(f'{c[i]} {v[r]} {s[r]}',dest='ru').text)
for y in x:print(y)