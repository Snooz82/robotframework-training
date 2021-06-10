*** Settings ***
Resource          imports.resource
Metadata          KomischerLink    http://www.google.de   #assad
Default Tags      TAG    ${var}
...     DEFAULT   #assad
Force Tags        FORCE    FORCE2   #asdas
Suite Setup       Log    Das ist das Suite Setup   #asdas
Test Setup        Open CarConfig as Admin   #asdasd
Test Teardown     Close All Browsers   #assad
Suite Teardown    Log    Das ist das Suite Teardown
Documentation     Selects a Base model based on    # test123
...               the base models name from the droip down menue.


*** Variables ***
${btn_NewCar}=    css:a.HomeListButtonNewCar
${select_CarBaseModel}=    //h2[contains(text(),'Basismodell')]/../..//div/select
${btn_LeftArrow}=    css:i.fa-chevron-left
${btn_RightArrow}=    css:i.fa-chevron-right
${txt_CarName}=    //h6[contains(text(),'Speichern:')]/../..//input
${btn_Save}=      //a[text()='Speichern']

*** Comments ***
das ist ein Test
und das auch

*** Test Cases ***
Configure Car
    [Documentation]    sadasd     #comment
    ...    - test    #comment
    ...    - test2
    [Setup]    Log
    ...  ${btn_Save}    level=INFO    
    ...   html=False    console=False    repr=False    formatter=str
    Open Browser    sdfsdf    asd    alias: NoneType=None    kasd    desired_capabilities: NoneType=None    ff_profile_dir: NoneType=None    options: NoneType=None    service_log_path: NoneType=None    executable_path: NoneType=None
    Click New_Car
    Select Base Model By Label    Minigolf
    Select Special Model    Gomera
    Select Accessory    ABS
    Select Accessories    Außenspiegel  
    ...  Fußmatten  
    ...   lenkrad    Radio
    Unselect Accessory 
    ...   ABS
    Select Special Model    Jazz     as
    Verify Total Price    16,619.00    €
    Set Car Name    My New Car
    Save New_Car
    [Tags]    test  #cert
    ...     test
    [Teardown]    Log    message    level=INFO    html=False    console=False    repr=False    formatter=str
    [Timeout]    2 Seconds


*** Keywords ***
Select Base Model
    [Documentation]    Selects a Base model based on    # test123
    ...    the base models name from the droip down menue.
    [Arguments]    ${basemodel}
    &{Options}    Get Options as Values   asdasd     asdasd
    Verify Base Mode Page
    Select From List By Value    ${select_CarBaseModel.sgsrg()}    ${Options}[${basemodel}]
    [Return]    asdasdasd${{asdasdasdasd}}

Verify Base Mode Page
    Location Should Be    http://car.keyword-driven.de/config/basemodel

Select Base Model By Label
    [Arguments]    ${basemodel}
    Click Link    css:[href="/config/basemodel"]
    Select From List By label    ${select_CarBaseModel}    ${basemodel}

Go To Next Page
    Click Element    ${btn_RightArrow}

Go To Prev Page
    Click Element    ${btn_LeftArrow}

Select Special Model
    [Arguments]    ${special}
    Click Link    css:[href="/config/edition"]
    Click Element    //div[@id='editionNames']//div[contains(text(),'${special}')]

Select Accessories
    [Arguments]    @{accessory_list}
    Go To Accessories
    #Click Link    css:[href="/config/extras"]
    FOR    ${acc}    IN    @{accessory_list}
        Select Accessory    ${acc}
    END

Select Accessory
    [Arguments]    ${accessory}
    Go To Accessories
    #Click Link    css:[href="/config/extras"]
    Select Checkbox    //span[contains(text(),'${accessory}')]/../input

Unselect Accessory
    [Arguments]    ${accessory}
    Go To Accessories
    #Click Link    css:[href="/config/extras"]
    Unselect Checkbox    //span[contains(text(),'${accessory}')]/../input

Go To Accessories
    ${location}    Get Location
    Run Keyword Unless    $location == '${BASE-URL}config/extras'    Click Link    css:[href="/config/extras"]

Set Car Name
    [Arguments]    ${Name}
    Click Link    css:[href="/config/summary"]
    Input Text    ${txt_CarName}    ${Name}

Verify Total Price
    [Arguments]    ${expected_price}    ${unit}
    Click Link    css:[href="/config/summary"]
    ${pricestr}    Get Text    css:span.summaryTotalPriceStyle > h6
    # Log Many    @{{$pricestr.split(' ')}}
    ${exc_price}    Regexp Escape    ${expected_price}
    Run Keyword And Continue On Failure    Should Match Regexp    ${pricestr}    .*(${exc_price}).*
    Run Keyword And Continue On Failure    Should Match Regexp    ${pricestr}    .*(${unit}$)

Click New_Car
   Click Element    ${btn_NewCar}

Save New_Car
    Click Element    ${btn_Save}

Get Options as Index
    @{options}     ${option}=    Get WebElements    css:div.displayFlexStyleRow select option
    &{Option_dict}=    Create Dictionary
    FOR    ${index}   ${option}    IN ENUMERATE    @{options}
        ${Text}    Get Text    ${option}
        ${index}=  Convert To String   ${index}
        &{Option_dict}    Create Dictionary    &{Option_dict}    ${Text}=${index}
    END
    [Return]    ${Option_dict}

Get Options as Values
    @{options}=    Get WebElements    css:div.displayFlexStyleRow select option
    &{Option_dict}=    Create Dictionary
    FOR    ${option}    IN    @{options}
        ${Text}=    Get Text    ${option}   
        ${Value}=       Get Element Attribute 
        ...    ${option}    value
        &{Option_dict}=    Create Dictionary    &{Option_dict}    ${Text}=${Value}
    END
    [Return]    ${Option_dict}

Get Element By Text
    [Arguments]    ${locator}    ${text}
    @{elements}    Get WebElements    ${locator}
    FOR    ${element}    IN    @{elements}
        ${act_text}=    Get Text    ${element}
        Return From Keyword If    $act_text == $text    ${element}
    END

Verify Price
    [Arguments]    ${expected_price}
    ${price_text}=    Get Text    css:span.summaryTotalPriceStyle
    Should Contain    ${price_text}    ${expected_price}

Keyword
    Open Context Menu    locator
