*** Settings ***
Resource    ../locators/dashboardNoteLocator.robot
Resource    ../../common.robot

*** Keywords ***
Cliquer sur bouton Profile
    Wait For Elements State    ${bouton_profile}    visible    timeout=10s
    Click    ${bouton_profile}

Vérifier la présence du mot Profile settings
    ${text}=    Get Text    ${mot_Profile_settings}
    Should Contain    ${text}    Profile settings