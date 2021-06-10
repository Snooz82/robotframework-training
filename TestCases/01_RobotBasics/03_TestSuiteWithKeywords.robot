*** Settings ***
Library           String
Resource          keywords.resource

*** Variables ***
${test}=
...               peter=halo    #sadasd
...               paul=sdasd

*** Test Cases ***
My Simple Test
    [Tags]    getagged
    Log To Console    Hello World Console
    Should Be Titlecase    Hello World Console
    Should Be Lowercase    hello world console    # asdasd
    [Teardown]    Should Be Uppercase    HELLO WORLD CONSOLE

My Test With Keywords
    Say Hello World
    Log    Hello
