*** Settings ***
Resource    imports.resource
Library     CryptoLibrary    key_path=/Source/keys/    variable_decryption=True
Suite Setup     Setup

*** Variables ***
${secret}=     KILL ALL HUMANS!!!
${enc_user}=   crypt:hDpIqJg+4Wxl2D/EH6eH7KQ5Im/99xuDwUuWZ/ntJgPbYuaUC208AdwvyT2lOehGetKSv18=
${enc_pwd}=    crypt:GlYElLDG0/ZR++He88AnnB3CG3LoNvsXol/RLLWu7hNy8x80kUPJzCD+oEkOOI9mlBGXsJNy8/Rx+t4=


*** Test Cases ***
Valid Login
    Suppress Logging          #disables Robot Framework logging
    Log    ${secret}
    Suppress Logging    False    #enables Robot Framework logging 
    ${dummy}=   Set Variable   ${secret}
    ${user}=    Set Variable    ${enc_user}
    log    ${user}
    Input Text      id:input_username    ${user}
    Input Password    id:input_password    ${enc_pwd} 
    Click Element    id:button_login
    Page Should Contain Element    //a[text()='Logout']
    [Teardown]   Close Browser

*** Keywords ***
Setup
    Open Browser    ${BASE-URL}    browser=${BROWSER}
    Set Log Level    TRACE
    Input Text      id:input_username    ${enc_user}
    Clear Element Text  id:input_username