*** Settings ***
Resource    ../../ressources/keywords/api/baseApi.robot
Resource    ../../ressources/keywords/ui/loginUi.robot

Suite Setup    Create API Session

*** Test Cases ***
Get All Products
    ${response}=    GET Request    /products
    Should Be Equal As Integers    ${response.status_code}    200

Create New Post
    ${titre}=    Générer un titre
    ${body}=    Create Dictionary    title=${titre}
    ${response}=    POST Request    /products/add    ${body}
    Should Be Equal As Integers    ${response.status_code}    201

