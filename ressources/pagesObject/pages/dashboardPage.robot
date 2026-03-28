*** Settings ***
Resource    ../locators/dashboardLocator.robot
Resource    ../../common.robot

*** Keywords ***

Verifier présence du mot dashboard
    Wait For Elements State    ${mot_dashboard}    visible    timeout=10s