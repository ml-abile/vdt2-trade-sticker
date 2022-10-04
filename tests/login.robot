*** Settings ***
Documentation    Login tests

Resource    ${EXECDIR}/resources/main.resource

Test Setup       Start Test
Test Teardown    Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Fill Credentials       papito@gmail.com    vaibrasil
    Submit Credentials 
    User Logged In

Não deve logar com senha incorreta
    Go To Login Page
    Fill Credentials           papito@gmail.com                           abc123
    Submit Credentials 
    Toast Message Should Be    Credenciais inválidas, tente novamente!

Deve exibir notificação toaster se a senha não for preenchida
    Go To Login Page
    Fill Credentials           papito@gmail.com                           ${EMPTY}
    Submit Credentials 
    Toast Message Should Be    Por favor, informe a sua senha secreta!

Deve exibir notificação toaster se o email não for preenchido
    Go To Login Page           
    Fill Credentials           ${EMPTY}                           vaibrasil
    Submit Credentials 
    Toast Message Should Be    Por favor, informe o seu email!

Deve exibir noticação toaster se email e senha não forem preenchidos
    Go To Login Page
    Submit Credentials 
    Toast Message Should Be    Por favor, informe suas credenciais!




