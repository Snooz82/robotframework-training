*** Settings ***
Documentation       Exported by TestBench
...    Project:     RobotFramework
...    Object:      Filename...
...    Version:     Version 1
...    Created by:  Administrator
...    Date:        2020-06-16 09:23:53
...    Subdivision: technicalKeywords

*** Variables ***

*** Keywords ***
Click Login Btn
    [Documentation]     Clicks the Login Button
    ...    
    ...    After this the login shall be started.
    ...    
    [Tags]    te17-IA-Cl5Lo5Bt3    inprogress
    ...

Click Logout Btn
    [Documentation]    
    [Tags]    te17-IA-Cl5Lo6Bt3    inprogress
    ...

Close CarConfig
    [Documentation]     
    ...    
    [Tags]    te17-IA-Cl5Ca9ar8Co6    inprogress
    ...

GoTo Loginpage
    [Documentation]    
    [Tags]    itb-IA-227269    inprogress
    ...

Invalid Login Admin
    [Documentation]    
    [Tags]    te17-IA-In7al4Lo5Ad5    inprogress
    ...

Login Admin
    [Documentation]    
    [Tags]    te17-IA-Lo5Ad5    inprogress
    ...

Open CarConfig
    [Documentation]    This starts CarConfig
    ...    
    [Tags]    te17-IA-Op4Ca9ar8Co6    inprogress
    ...

Set Password
    [Documentation]    Input Password id:input_password ${password}
    ...    
    [Tags]    te17-IA-Se3Pa8as7    inprogress
    [Arguments]    ${password}
    ...

Set Username
    [Documentation]    Input Text id:input_username ${username}
    ...    
    [Tags]    te17-IA-Se3Us8am3    inprogress
    [Arguments]    ${username}
    ...

Verify Login Page Content
    [Documentation]    
    [Tags]    te17-IA-Ve6Lo5Pa4ag3Co7    inprogress
    ...

Verify Successful Login
    [Documentation]    
    [Tags]    te17-IA-Ve6Su10Lo5    inprogress
    ...

