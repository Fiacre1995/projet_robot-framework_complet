*** Settings ***
Library    String
Library    DateTime
Library    Collections
Resource    ../../ressources/common.robot

*** Keywords ***
Generate User Data
    ${timestamp}=    Get Time    epoch
    ${random}=       Generate Random String    5

    ${email}=    Set Variable    user_${timestamp}_${random}@test.com
    ${name}=    Set Variable    user_${timestamp}_${random}
    ${password}=    Set Variable    12345678

    ${user}=    Create Dictionary
    ...    email=${email}
    ...    name=${name}
    ...    password=${password}

    RETURN    ${user}