from robot.api.logger import console
# from typing import Any, Optional, Union
from datetime import timedelta
ROBOT_LIBRARY_DOC_FORMAT = 'robot'



def types(string: str, boolean: bool, integer: int, floating: float, time: timedelta):
    console('\n')
    console(f"string: {type(string)} {string}")
    console(f"boolean: {type(boolean)} {boolean}")
    console(f"integer: {type(integer)} {integer}")
    console(f"floating: {type(floating)} {floating}")
    console(f"time: {type(time)} {time}")


def pos(one, two, three):
    """
    robotframework

    *** Test Cases ***
    Example
        My keyword    # How cool is this!!?!!?!1!!
    """
    pass


def keyword(arg1, emptystring='', spacestring=' ', emptytypestring: str = '', arg3='hello'):
    pass


def posopt(INT=1, FLOAT=2.0, STR='3', EMPTY='', Nothing=None, BOOLEAN=False):
    """<p> this is no shit! </p>
    This is second Line

    Holla die Waldfee
    """
    pass


def posonly(INT: int, FLOAT: float = 2.0, /, EmptySTR='', *, NamedOnlyEMPTY: str = '', Nothing=None, BOOLEAN=False, **kwargs):
    pass


def postypopt(INT: int = 1, FLOAT: float = 2.0, STR: str = 'stringy', EMPTY: str = '', *vargs: bool, NONE=None, BOOLEAN: bool = True, **kwargs: int):
    pass


def set_timeout(time=''):
    if time != '':
        print(10 - time)
    else:
        print('What the Fuck')


def get_type(var: float):
    """Get the fkn type"""
    console(f'{type(var)} = {var}')
    return type(var)


def funnystrings(emp='a\t\t<b>Hello</b>', regex=r"^(?!\\s*\\.\\.\\.)", mulspec='Log   This has two ${space}', mulmulspec='c:\\windows\\system32', onlynormal="te  st\nHe'll'o    "):
    print(emp)
    print(spac)
    print(mulspec)
    print(mulmulspec)
    print(onlynormal)
    pass


def get_len(value):
    console(f'len: {len(value)}')
    return len(value)
