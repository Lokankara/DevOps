class ListGen:
    def __init__(self, tokens):
        self.tokens = tokens
        self.i = 0
    def reset(self):
        self.i=0
    def generate(self):
        if self.i >= len(self.tokens):
            return
        password = self.tokens[self.i]
        self.i += 1
        return password
    
class FileLinesGen(ListGen):
    def __init__(self, filename = 'bad_pass.txt'):
        with open(filename) as f:
            content = f.read()
            tokens = content.split('\n')
            super().__init__(tokens=tokens)

class BasicLogGen(ListGen):
    def __init__(self):
        super().__init__(tokens=['admin','user','cat'])

class BruteForceGen:
    def __init__(self, abc='0123456789zxcvbnmasdfghjklqwertyuiop'):
        self.abc = abc
        self.base = len(abc)
        self.i = 0
        self.length = 0
    def reset(self):
        self.i = 0
        self.length = 0
    def generate(self):
        result=''
        t=self.i
        while t>0:
            rest = t%self.base
            result =self.abc[rest] +result
            t = t//self.base
        while len(result) < self.length:
            result =self.abc[0] +result
        if result == self.abc[-1] * self.length:
            self.length +=1
            self.i =0
        else: self.i +=1
        return result
        
 
##bpg1 = BadPassGen()
##
##print(bpg.generate())
##print(bpg.generate())
##print(bpg1.generate())
##print(bpg.i)
