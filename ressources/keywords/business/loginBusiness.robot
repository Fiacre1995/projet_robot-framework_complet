*** Settings ***
Resource    ../ui/loginUi.robot
Resource    ../../pagesObject/pages/loginPage.robot
Resource    ../../pagesObject/pages/dashboardPage.robot

*** Keywords ***
Authentification Valide
    [Arguments]    ${username}    ${password}
    Vérifier l'url de la page de login
    Authentification avec les identifiants    ${username}    ${password}
    Verifier présence du mot dashboard
    Générer un nom utilisateur

Authentification echoue
    [Arguments]    ${username}    ${password}
    Vérifier l'url de la page de login
    Authentification avec les identifiants    ${username}    ${password}
    Verifier Message authentification échoué

Authentification avec coordonnées vident
    [Arguments]    ${username}    ${password}
    Vérifier l'url de la page de login
    Authentification avec les identifiants    ${username}    ${password}
    Vérifier le message d'erreur required pour le champ username
    Vérifier le message d'erreur required pour le champ password