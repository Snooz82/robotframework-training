*** Settings ***
Library    ../../Resources/Libraries/MyLib2.py     ip=192.168.2.1
Metadata    Typ    Training type
Metadata    user    %{LOGNAME}

*** Test Cases ***
Test
    #Say HO    Ho
    ${testvar}    Set Variable    TestVariable
    Set Test Variable    ${myother}    World
    log    ${myother}
    Set My Var    ${myvar}    Hello
    log    ${myvar}
    Hello Someone    Peter
    Set Version Meta
    Log a List    first    1    2    3    4    name=askdjkashk
    Log    ${testvar}
    FOR    ${value}    IN RANGE    100
        Log   ${value}
    END


*** Keywords ***
Set Version Meta
    Set Suite Metadata    TestEnv Version    2.4.3.1     True


Log a List
    [Arguments]    ${first}    @{rest}    ${name}=default
    ${kwVariable}    Set Variable    KeywordVar
    Log    ${first}
    Log Many    @{rest}
    Log    ${name}
    Log    ${kwVariable}
