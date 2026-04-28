*** Settings ***
Resource    ../../ressources/keywords/api/baseApi.robot
Resource    ../../ressources/keywords/ui/loginUi.robot
Resource    ../../ressources/keywords/api/userApi.robot

*** Variables ***
${USER_DATA}

*** Test Cases ***
Créer un nouvel utilisateur et Authentification
    ${USER_DATA}=    Create user
    Authentification user    ${USER_DATA}
