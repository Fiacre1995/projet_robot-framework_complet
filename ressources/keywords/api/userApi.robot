*** Settings ***
Resource    baseApi.robot
Resource    ../../../testdata/factory/TestDataFactory.robot
Resource    ../navigation/navigation.robot

*** Variables ***
${TOKEN}
${URL_PAGE}=    https://practice.expandtesting.com/notes/app/login
*** Keywords ***
Create user
    baseApi.Create API Session
    ${userData}=    Generate User Data
    ${response}=    baseApi.POST Request    /notes/api/users/register    ${userData}
    Should Be Equal As Integers    ${response.status_code}    201
    Log To Console    ${response}

    RETURN  ${userData}

Authentification user
    [Arguments]     ${user_auth}
    baseApi.Create API Session
    ${response}=    baseApi.POST Request    /notes/api/users/login    ${user_auth}
    Should Be Equal As Integers    ${response.status_code}    200
    ${TOKEN}=    Set Variable    ${response.json()["data"]["token"]}
    ${ID}=  Set Variable    ${response.json()["data"]["id"]}
    Set Test Variable    ${TOKEN}
    Log To Console    token: ${TOKEN}
    Log To Console    Id: ${ID}

Create user and authenticate
    ${USER_DATA}=   Create user
    Authentification user    ${USER_DATA}
    Set Test Variable    ${USER_DATA}
    
Delete user
    baseApi.Create Authenticated Session    ${TOKEN}
    ${response}=   baseApi.DELETE Request    notes/api/users/delete-account
    Should Be Equal As Integers    ${response.status_code}    200

Inject Token In Browser
    [Arguments]    ${token}

    Wait For Elements State    body    visible
    Evaluate JavaScript    body    window.localStorage.setItem('token', '${token}')
    Wait For Elements State    body    visible    timeout=30000
    Reload  timeout=10000