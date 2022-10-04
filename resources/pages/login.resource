*** Settings ***
Documentation       Login Page

Library     Browser

*** Keywords ***
Go To Login Page
    New Page       https://trade-sticker-dev.vercel.app

Fill Credentials
    [Arguments]    ${email}                     ${senha}
    Fill Text      css=input[name=email]        ${email}
    Fill Text      css=input[name=password]     ${senha}

Submit Credentials
   Click          css=button >> text=Entrar

Toast Message Should Be
    [Arguments]    ${expected_message}
    ${locator}     Set Variable           css=.Toastify__toast-body >> text=${expected_message}
    Wait For Elements State    ${locator}    visible    3

    Sleep   1

    # pega o código da pagina, no momento em que aparece o toast
    # ${temp}    Get Page Source
    # Log        ${temp}