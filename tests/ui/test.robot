*** Settings ***
Library    Browser

*** Test Cases ***
Open Google
    New Browser    chromium     headless=True
    New Page    https://www.google.com
    #Wait For Elements State    css=p.inconnu    visible    timeout=10s

Test de iframe
    New Browser    chromium     headless=False
    New Page    https://demoqa.com
    Click    text=Alerts, Frame & Windows
    Click    span:has-text("Frames") >> nth=0
    Wait For Elements State    iframe#frame1    visible
    Wait For Elements State    iframe#frame1 >>> text=This is a sample page    visible
    Click    text=Alerts >> nth=0

Test sur les alertes
    [Tags]      alertes
    New Browser    chromium     headless=False
    New Page    https://demoqa.com
    Click    text=Alerts, Frame & Windows
    Click    text=Alerts >> nth=1
     # ✅ Déclarer AVANT le clic qui déclenche l'alerte
    # Handle Future Dialogs    action=accept
    Click    text=Click me >> nth=1
    # Click    text=Alerts, Frame & Windows
    # Commentaire