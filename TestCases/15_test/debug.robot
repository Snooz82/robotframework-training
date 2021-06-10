*** Settings ***
Resource    02.resource
Resource    01.resource


*** Variables ***
${suitevar}    Suitevar

*** Test Cases ***
Test    
    keywordcall     Hallo
    #Das ist ein Kommentaf
#    Log    Das hier auch ein Kommentar
    Log    321

*** Keywords ***
keywordcall
    [Arguments]    ${mylocal}
    Log    ${mylocal}
#    Log    ${suitevar}
    log    END
    