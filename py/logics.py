def base_logic(login_generator, password_generator, query):
    login = login_generator.generate()
    if login is None:return

    while True:
        password = password_generator.generate()
        if password is None:return

        if query(login, password):
            print('Success',login,password)
            return

def password_then_login_logic(login_generator, password_generator, query, logins_limit=1000):
    success_logins = {}
    while True:
        password = password_generator.generate()
        if password is None:return
        login_generator.reset()
        for i in range (logins_limit):
            login = login_generator.generate()
            if login is None:break
            if login in success_logins: continue
        if query(login, password):
            print('Success', login, password)
            success_logins[login] = password
            return

def login_then_password_logic(login_generator, password_generator, query, passwords_limit=1000):
    success_logins = {}
    while True:
        login = login_generator.generate()
        if login is None:break
        password = password_generator.reset()
        for i in range (passwords_limit):
            password = password_generator.generate()
        if password is None:break
        
        if query(login, password):
            print('Success', login, password)
            success_logins[login] = password
            break
