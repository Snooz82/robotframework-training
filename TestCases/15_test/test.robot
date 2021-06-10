*** Settings ***
Library    keywords.py


*** Variables ***
${var}    ${1}

*** Keywords ***
Keyword123
    [Arguments]    @{all}
    [Tags]    flat
    MORE

    IF    1 == 1
        IF   1 > 0
             Log To Console    ${all}
            Log To Console    This is the End
        END
    ELSE IF    2 == 2
        Log   some
    ELSE
        LOG    234
    END




MORE
    Log     Voll die Scheiße


*** Test Cases ***
Test IF
    Keyword123