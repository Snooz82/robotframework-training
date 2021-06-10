*** Settings ***
Library    String


*** Test Cases ***
My Simple Test
    Log To Console     Hello World Console
    Should Be Titlecase    Hello World Console
    Should Be Lowercase    hello world console
    Should Be Uppercase    HELLO WORLD CONSOLE