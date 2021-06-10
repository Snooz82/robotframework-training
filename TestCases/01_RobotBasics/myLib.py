from robot.libraries.BuiltIn import BuiltIn

def my_keyword():
    cur = BuiltIn().get_variable_value('${CURDIR}')
    return cur