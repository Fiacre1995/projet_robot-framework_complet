*** Settings ***

Resource    ../../pagesObject/pages/loginPage.robot

*** Keywords ***
Authentification avec les identifiants
    [Arguments]     ${username}    ${password}
    Saisir le nom utilisateur    ${username}
    Saisir le mot de passe    ${password}
    Cliquer sur le bouton Login

Générer un nom utilisateur
    ${nom}=     Faker.Generate Random Name
    Log    ${nom}