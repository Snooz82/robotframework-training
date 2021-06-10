*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
My Simple Test
    Log    Hello World
    Log To Console    Hello World Console
    Should Be Equal    Hello    Hello

My FAIL Test
    Log To Console    This test case will fail...
    Should Be Equal    Hello    World!

