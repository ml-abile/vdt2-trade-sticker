*** Settings ***
Documentation    Arquivo principal do projeto

Library    Browser

Resource    pages/login.resource
Resource    pages/dash.resource

*** Keywords ***

Do Login
    Go To Login Page
    Fill Credentials    papito@gmail.com    vaibrasil
    Submit Credentials
    User Logged In

Start Test
    New Browser    headless=False

Finish Test
    #Thinling Time
    Sleep              1
    Take Screenshot