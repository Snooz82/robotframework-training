*** Settings ***
Library    String

*** Test Cases ***
My Simple Test
    Log   test
    Log    Hello World
    Should Be Equal    Hello    Hello


