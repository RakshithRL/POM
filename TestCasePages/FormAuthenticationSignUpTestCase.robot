*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/WelComePage.robot
Resource    ../Pages/FormAuthenticationSignUpPage.robot
Resource    ../Pages/FormAuthenticationWelcomePage.robot

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome
${uName}    tomsmith
${uPass}    SuperSecretPassword!

*** Test Cases ***
Test One
    open my browser     ${url}  ${browser}
    verify title
    Click on FormAuthentication
    verify loop
    enter username  ${uName}
    enter password  ${uPass}
    click on submit
    verifying welcomepage
    click logoutbutton
    close browser