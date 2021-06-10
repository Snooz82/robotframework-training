*** Settings ***
Library    String


*** Variables ***
${MyVar}=    Hello World


*** Test Cases ***
My Simple Test
    Log    Hello World
    Should Be Titlecase  Hello World
    Log To Console     Hello World Console
    Should Be Lowercase  hello world

My Test with Keywords
    Say Hello


*** Keywords ***
Say Hello
    Log    Hello World
    Log To Console     Hello World Console 