*** Test Cases ***
Test
    Set Tan to Variable    \${TAN}
    Log     ${TAN}

*** Keywords ***
For times
    [Arguments]    ${times}
    Log To Console   ${times}
    Run Keyword If    ${times} > 0    For times    ${{${times}-2}}


Set Tan to Variable
    [Arguments]    ${var}    
    Set Global Variable    ${var}    12345