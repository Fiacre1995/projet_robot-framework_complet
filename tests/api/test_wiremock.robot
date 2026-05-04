*** Settings ***
Resource    ../../ressources/keywords/api/wiremock.robot

*** Test Cases ***
Test Récupération Utilisateur Mocké
    Créer Session API
    ${response}=    Récupérer Utilisateur

    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal As Strings     ${response.json()}[name]    John Doe
    Should Be Equal As Strings     ${response.json()}[email]   john@test.com