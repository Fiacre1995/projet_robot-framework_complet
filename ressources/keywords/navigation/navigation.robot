*** Settings ***
Resource    ../../common.robot
Variables    ../../../configs/${ENV}.yaml

*** Keywords ***

Ouvrir le navigateur
    New Browser    ${BROWSER}    headless=${HEADLESS}

Ouvrir la page
    New Context
    New Page    ${BASE_URL}
    Log    Ouverture du navigateur

Ouvrir la page param
    #[Arguments]     ${url}
    New Context
    New Page    https://practice.expandtesting.com/notes/app/login
    Log    Ouverture du navigateur

Fermer le navigateur
    Close Browser       # cache et cookies de cette session seront effacés automatiquement
    Log    Fermeture du navigateur