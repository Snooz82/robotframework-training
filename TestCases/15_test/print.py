from robot.api.logger import console
from robot.libraries.BuiltIn import BuiltIn

def color():
    console("This is skip                                                         | \u001b[38;5;39mSKIP\u001b[0m |")


def exec_named(arg):
    BuiltIn().set_local_variable('${myvar}', arg)
    BuiltIn().run_keyword('my_keyword', 'named=${myvar}')