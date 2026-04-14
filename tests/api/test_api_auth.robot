*** Settings ***
Resource    ../../ressources/keywords/api/baseApi.robot
Resource    ../../ressources/keywords/ui/loginUi.robot

*** Test Cases ***
Authentification Api
    ${token_generer}=    Get Auth Token    emilys    emilyspass    refreshToken
    Create Authenticated Session    ${token_generer}
    GET Protected Resource    28
