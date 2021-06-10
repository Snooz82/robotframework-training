*** Variables ***
${now}    ${{'{dt:%Y}-{dt:%m}-{dt:%d} {dt:%H}:{dt:%M}:{dt:%S}'.format(dt=datetime.datetime.now())}}

*** Test Cases ***
test 1
    Log To Console    ${now}
    Log To Console    ${var}
    Sleep    1 sec

test 2
    Log To Console    ${now}
    Sleep    1 sec

test 3
    Log To Console    ${now}
    Sleep    1 sec

test 4
    Log To Console    ${now}
    Sleep    1 sec
