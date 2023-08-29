*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/FormAuthenticationWelcomePage.py

*** Keywords ***
Verifying welcomepage
    wait until page contains element    ${message}
    wait until element is enabled    ${logoutbutton}

click logoutbutton
    click element    ${logoutbutton}
