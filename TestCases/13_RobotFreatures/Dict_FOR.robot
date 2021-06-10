*** Settings ***
Library    Collections

*** Variables ***
&{dict}=    eins=1    zwei=2    drei=3    vier=4
${py_dict}=    ${{{'a': 1,'b': 'bee',66: 'sechsundsechszig','list': [1,2,3,4]}}}
@{list_key_value}=    hallo=world    test=best    Peter=Seller

*** Test Cases ***
Test mit For
    FOR    ${item}    IN    @{list_key_value}    Franz=Meier
        Log    ${item}
    END
    FOR    ${item}    IN    hallo=world    test=best    Peter=Seller    Franz=Meier   #Strange
        Log    ${item}
    END
    FOR    ${item}    IN    hallo    test=best    Peter=Seller    Franz=Meier
        Log    ${item}
    END
    FOR    ${item}    IN    hallo=world    test    Peter    Franz
        Log    ${item}
    END