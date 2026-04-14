# Installation de Robot Framework
    pip install robotframework
    robot --version

# Fichier qui permet d'initialisé les librairies
    Le fichier :  common.robot

# Installation de Robot Framework Browser ( Playwright )
    1- pip install robotframework-browser
    2- rfbrowser init  (Installer les navigateurs playwright)

# Exécuté la commandes en précisant le répertoire du résultat
    robot --outputdir resultats .\tests\ui\login.robot

# Installer allure report
    1- pip install allure-robotframework
    2- npm install -g allure-commandline
    3- allure --version

# Exécution de Test allure report
    1- robot --listener allure_robotframework --outputdir resultats tests/   (génerer répertoire allure)
    2- allure generate --output allure-report output/allure (générer rapport allure)
    3- allure open allure-report
    4- rm -rf allure-report (optionnel : supprimer allure report)

    Prendre en compte les étapes 2, 3, 4 en une seul ligne :
    - if (Test-Path allure-report) { Remove-Item -Recurse -Force allure-report }; allure generate --output allure-report output/allure; allure open allure-report

# Gestion des tests en parallèle avec pabot
    1- Installation de pabot: pip install robotframework-pabot
    2- Vérifier Installation: pabot --version
    3- Exécution parallèle avec pabot par test : pabot --processes 4 --testlevelsplit tests/
    - Exécution parallèle avec pabot par fichier : pabot --processes 4 tests/

# Exécution des tests parallèle et festion de allure report
    1- pabot --processes 4 --testlevelsplit --listener allure_robotframework --outputdir resultats tests/
    2- if (Test-Path allure-report) { Remove-Item -Recurse -Force allure-report }; allure generate --output allure-report output/allure; allure open allure-report

# Exécution en prenant en définissant la valeur d'une variable pour gestion des environnements 
    -  pabot --processes 4 --testlevelsplit --variable ENV:dev --outputdir resultats tests/
    -  pabot --processes 4 --testlevelsplit --variable ENV:dev --listener allure_robotframework --outputdir resultats tests/

# Exécuté des fichiers en triant à partir du Tag préciser 
    - robot --include api --outputdir resultats tests/
    - robot --exclude api --outputdir resultats tests/
    - robot --include "smokeANDlogin" tests/   (sélectionner plusieurs tags pour le filtre)