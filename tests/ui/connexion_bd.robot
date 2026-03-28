*** Settings ***

Resource    ../../ressources/keywords/bd/postgres_bd.robot

*** Test Cases ***
Connexion bd valide
    [Tags]    api    connexion_bd    critique
    Connect To Database
