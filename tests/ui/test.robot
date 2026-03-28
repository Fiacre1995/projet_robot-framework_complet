*** Settings ***
Library    Browser

*** Test Cases ***
Open Google
    New Browser    chromium     headless=True
    New Page    https://www.google.com
    #Wait For Elements State    css=p.inconnu    visible    timeout=10s