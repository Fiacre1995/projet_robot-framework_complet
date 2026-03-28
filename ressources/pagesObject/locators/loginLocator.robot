*** Variables ***

# Les champs
${champ_nom_utilisateur}     input[name="username"]
${champ_mot_de_passe}     input[name="password"]

# Les mots
${mot_login}    css=h5.orangehrm-login-title
${message_erreur}   css=p.oxd-text--p.oxd-alert-content-text
${message_required_username}    css=span.oxd-input-field-error-message.oxd-input-group__message >> nth=0
${message_required_password}    css=span.oxd-input-field-error-message.oxd-input-group__message >> nth=1

# Les boutons
${bouton_login}     css=button.orangehrm-login-button

# Les liens
${lien_mot_depasse_oublié}      css=p.orangehrm-login-forgot-header
