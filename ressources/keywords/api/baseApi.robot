*** Settings ***
Resource    ../../common.robot
Variables    ../../../configs/${ENV}.yaml

*** Keywords ***
Create API Session
    Create Session    api    ${BASE_API_URL}

GET Request
    [Arguments]    ${endpoint}
    ${response}=    GET On Session    api    ${endpoint}
    RETURN    ${response}

POST Request
    [Arguments]    ${endpoint}    ${body}
    ${response}=    POST On Session    api    ${endpoint}    json=${body}
    RETURN    ${response}

Get Auth Token
    [Arguments]     ${username}     ${password}     ${key_token}
    Create Session    auth    ${BASE_API_URL}
    ${body}=    Create Dictionary   username=${username}  password=${password}
    ${response}=    POST On Session    auth    /auth/login    json=${body}
    Should Be Equal As Integers    ${response.status_code}    200
    ${token}=    Set Variable    ${response.json()["${key_token}"]}
    Log To Console    Token: ${token}
    RETURN    ${token}

Create Authenticated Session
    [Arguments]    ${token}
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}   Content-Type=application/json
    Create Session    api    ${BASE_API_URL}    headers=${headers}

GET Protected Resource
    [Arguments]     ${id}
    ${response}=    GET On Session    api    /products/${id}
    Log To Console    ${response.json()["id"]}
    RETURN    ${response}