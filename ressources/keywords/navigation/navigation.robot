*** Settings ***
Resource    ../../common.robot
Variables    ../../../configs/${ENV}.yaml

*** Keywords ***
Ouvrir le navigateur
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Context
    New Page    ${BASE_URL}
    Log    Ouverture du navigateur

Fermer le navigateur
    Close Browser       # cache et cookies de cette session seront effacés automatiquement
    Log    Fermeture du navigateur