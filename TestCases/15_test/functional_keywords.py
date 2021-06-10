import technical_keywords as t


def open_github():
    t.open_browser("chrome", "http://github.com")


def login_user(user):
    t.set_username(user["user"])
    t.set_password(user["pwd"])
    t.click_login()
