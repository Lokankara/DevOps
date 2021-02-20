import json
from flask import Flask, request, Response

app = Flask(__name__)

stats ={'attempts':0, 'success': 0, 'login': ''}

@app.route('/')
def hell():
      return f'hell {stats}'
@app.route('/auth', methods=['POST'])
def auth():
      stats['attempts'] +=1
      data = request.json
      login = data['login']
      stats['login'] = login
      password = data['password']
##      print(password)

      with open('u.json') as users_file:
            users= json.load(users_file)
      if login in users and users[login] == password:
            status_code = 200
            stats['success'] +=1
      else: status_code = 401

      return Response(status=status_code)

if __name__ == '__main__':
      app.run()
