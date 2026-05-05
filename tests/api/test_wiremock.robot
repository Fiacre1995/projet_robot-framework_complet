*** Settings ***
Resource    ../../ressources/keywords/api/wiremock.robot

*** Test Cases ***
#Test Récupération Utilisateur Mocké
    #Créer Session API
    #${response}=    Récupérer Utilisateur

    #Should Be Equal As Integers    ${response.status_code}    200
    #Should Be Equal As Strings     ${response.json()}[name]    John Doe
    #Should Be Equal As Strings     ${response.json()}[email]   john@test.com

Test Utilisateur Success 200
    Créer Session API
    ${response}=    Appeler API Utilisateur
    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal As Strings     ${response.json()}[name]    John Doe
    Should Be Equal As Strings     ${response.json()}[email]    john@test.com

Test Utilisateur Erreur 500
    Créer Session API
    ${response}=    Appeler API Utilisateur    500
    Should Be Equal As Integers    ${response.status_code}    500
    Should Be Equal As Strings     ${response.json()}[error]    Internal Server Error