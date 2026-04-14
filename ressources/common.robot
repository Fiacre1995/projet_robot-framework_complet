*** Settings ***
Library    Browser
#Library    SeleniumLibrary
Library    BuiltIn
Library    Process
Library    Collections
Library    String
Library    OperatingSystem
Library    RequestsLibrary
Library     ../librairies/generer_donnees.py     WITH NAME   Faker
Library     ../librairies/postgresBd.py     WITH NAME   Bd