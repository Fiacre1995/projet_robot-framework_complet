*** Settings ***

Resource    ../../ressources/keywords/business/loginBusiness.robot
Resource    ../../ressources/keywords/navigation/navigation.robot
Variables    ../../testdata/users_${ENV}.yaml

Test Setup      Ouvrir le navigateur
Test Teardown       Fermer le navigateur

*** Test Cases ***
Connexion avec des identifiants valident
    [Tags]    regression    login    critique
    Authentification Valide    ${VALID_USER}    ${VALID_PASSWORD}

Connexion avec des identifiants invalident
    [Tags]    regression    login    moyen
    Authentification echoue    ${INVALID_USER}    ${INVALID_PASSWORD}

Connexion avec des identifiants vident
    [Tags]    regression    login    faible
    Authentification avec coordonnées vident     ${CHAMP_VIDE}    ${CHAMP_VIDE}