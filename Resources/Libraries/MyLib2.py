from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn, run_keyword_variant
from robot.running import Keyword, RUN_KW_REGISTER
from enum import Enum


def run_keyword_variant(resolve):
    def decorator(method):
        RUN_KW_REGISTER.register_run_keyword('MyLib2', method.__name__, resolve, deprecation_warning=False)
        return method
    return decorator


class MyLib2:
    '''*Das ist meine Doku*

    Hier weitere Doku
    '''

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self, ip='127.0.0.1'):
        """Das ding hat ne Option IP"""
        self.ip = ip

    def my_keyword(self):
        """Das ist ein keyword"""
        logger.debug('Hello World')

    def hello_someone(self, name: str):
        print(f'Hello {name}')

    @run_keyword_variant(resolve=0)
    def set_my_var(self, var, val):
        BuiltIn().set_test_variable(var, val)

