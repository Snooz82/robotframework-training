*** Settings ***
Library   OperatingSystem
Variables   counter.py

*** Keywords ***
Increment Counter
    Create File    ${CURDIR}/counter.py    counter=${counter+1}