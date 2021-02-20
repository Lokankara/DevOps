import generators
import logics
import queries

logics.base_logic(
    login_generator=generators.BasicLogGen(),
    password_generator=generators.FileLinesGen(filename='bad_pass.txt'),
    query= queries.request_local_server)

#filename='bad_login.txt'
logics.password_then_login_logic(
    login_generator=generators.BasicLogGen(), 
    password_generator=generators.FileLinesGen(filename='bad_pass.txt'),
    query= queries.request_local_server)

login_then_password_logic(
    login_generator=generators.BasicLogGen(),
    password_generator=generators.BruteForceGen(),
    query= queries.request_local_server,
    password_limit=20000)
