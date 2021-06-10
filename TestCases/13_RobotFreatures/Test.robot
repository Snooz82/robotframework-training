*** Settings ***
Library           OperatingSystem
Library           DataDriver    dialect=excel    encoding=utf_8    config_keyword=Config
Test Setup        Set Test Variable    ${test_var}    test
#Test Template     The Test Keyword
Suite Setup       Log    The Setup
Suite Teardown    Log    the Teardown
Resource    keywords.resource


*** Variables ***
${suite_var}=    Suite

*** Test Cases ***
Test
    ${var}    Set Variable    111
    Log To Console        ${test_var}:${var}
    Should Be Equal    111    ${var}
    Log To Console    ${var}
    Log something

*** Keywords ***
The Test Keyword
    [Arguments]    ${var}
    Log To Console        ${test_var}:${var}
    Should Be Equal    111    ${var}
    Log To Console    ${var}
    Log something





Config
    [Arguments]    ${original_config}
    Log To Console    ${original_config.dialect}
    Remove File    ${CURDIR}/test321.csv
    File Should Not Exist    ${CURDIR}/test321.csv
    Create File    ${CURDIR}/test321.csv
    ...    *** Test Cases ***,\${var},\nTestCase1,111,\nTestCase2,222,
    ${new_config}=    Create Dictionary    file=test321.csv
    [Return]    ${new_config}
