*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Keywords ***
Créer Session API
    Create Session    api    http://localhost:8282

Récupérer Utilisateur
    ${response}=    GET On Session    api    /api/user/1
    [Return]    ${response}

Appeler API Utilisateur
    [Arguments]    ${status}=200
    ${headers}=    Create Dictionary

    Run Keyword If    '${status}' != '200'
    ...    Set To Dictionary    ${headers}    X-MOCK-STATUS=${status}

    ${response}=    GET On Session
    ...    api
    ...    /api/user/1
    ...    headers=${headers}
    ...    expected_status=any          # ← laisser RequestsLibrary ne pas lever d'exception

    [Return]    ${response}