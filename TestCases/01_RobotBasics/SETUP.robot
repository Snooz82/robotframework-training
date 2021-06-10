*** Settings ***
#Suite Setup    Log    SuiteSetup
#Test Setup    Log    TestSetup
#Test Teardown    Log    TestTeardown
#Suite Teardown    Log    SuiteTeardown
Library    myLib.py

*** Test Cases ***
Test
    #[Setup]    Log To Console    This is the TestSetup
    Log To Console    TestStep
    ${cur}=    My Keyword
    Log To Console   ${cur}
    #[Teardown]    Log To Console    This is Teardown