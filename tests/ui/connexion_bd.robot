*** Settings ***

Resource    ../../ressources/keywords/bd/postgres_bd.robot

*** Test Cases ***
Connexion bd valide
    [Tags]    bd    connexion_bd    critique
    Connect To Database
