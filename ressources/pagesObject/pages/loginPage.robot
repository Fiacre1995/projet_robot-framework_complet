*** Settings ***
Resource    ../locators/loginLocator.robot
Resource    ../../common.robot

*** Keywords ***

Saisir le nom utilisateur
    [Arguments]     ${username}
    Fill Text   ${champ_nom_utilisateur}    ${username}
    Log    le nom utilisateur saisir est ${username}
    
Saisir le mot de passe
    [Arguments]     ${password}
    Fill Text    ${champ_mot_de_passe}    ${password}

Cliquer sur le bouton Login
    Click    ${bouton_login}

Verifier Message authentification échoué
    Wait For Elements State    ${message_erreur}    visible    timeout=10s

Vérifier la présence du mot login
    ${text}=    Get Text    ${mot_login}
    Should Contain    ${text}    Login

Vérifier l'url de la page de login
    ${url}=    Get Url
    Should Contain    ${url}    /auth/login

Vérifier le message d'erreur required pour le champ username
    Wait For Elements State    ${message_required_username}    visible    timeout=10s

Vérifier le message d'erreur required pour le champ password
    Wait For Elements State    ${message_required_password}    visible    timeout=10s
