from gtts import gTTS
import pdftotext
import re
with open('eng.pdf', 'rb') as file:
    pdf=pdftotext.PDF(file)
print(len(pdf))
for p in pdf:
    print(p)
    
text='\n'.join(pdf).encode('utf-8').strip()
text = re.sub(r'(facebook.com/LinguaLIB)', '', text)
text = re.sub(r'(vk.com/lingualib)', '', text)
# text = re.sub(r'\n\d', '\n', text)
with open('ansible-for-devops.txt', 'w') as f:
    f.write(text)
# ff=gTTS(text=text,lang='en')
# ff.save('au.mp3')