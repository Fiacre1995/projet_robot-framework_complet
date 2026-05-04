*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Créer Session API
    Create Session    api    http://localhost:8282

Récupérer Utilisateur
    ${response}=    GET On Session    api    /api/user/1
    [Return]    ${response}