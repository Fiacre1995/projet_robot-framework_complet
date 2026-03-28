*** Settings ***
Resource    ../../common.robot
Variables    ../../../testdata/bd/bd.yaml

*** Keywords ***
Connect To Database
    Bd.Connect Bd   ${DB_HOST}    ${DB_NAME}    ${DB_USER}    ${DB_PASS}
