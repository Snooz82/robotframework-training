*** Settings ***
Library    String

*** Variables ***
${MyString}=    Hello World


*** Test Cases ***
My Simple Test With Var
    Log To Console     ${MyString} Console
    Should Be Equal    ${MyString}    Hello World
    ${ret}=    Return something    This is String


*** Keywords ***
Return something
    [Arguments]    ${arg}
    Log    Arg: ${arg}    level=DEBUG
    [Return]    ${arg}