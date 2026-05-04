*** Settings ***
Resource    ../../ressources/keywords/api/userApi.robot
Resource    ../../ressources/keywords/ui/dashboardNoteUi.robot
Resource    ../../ressources/keywords/navigation/navigation.robot

# ✅ Bon ordre
Test Setup      Run Keywords
...             Create user and authenticate    AND
...             Ouvrir le navigateur            AND
...             Ouvrir la page param

Test Teardown   Run Keywords
...             Fermer le navigateur    AND
...             Delete user

*** Test Cases ***
Authentification user
    Inject Token In Browser    ${TOKEN}

Accéder à la page Profile ui
    Inject Token In Browser    ${TOKEN}
    Accéder à page profile