*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/MultipleWindows.py

*** Keywords ***
Verify page
    page should contain     Opening a new window
    page should contain element    ${new_window}

Open New Window
    click element    ${new_window}

Test between Windows
    switch window    New Window
    sleep    2sec
    switch window    The Internet
    sleep    2sec
    switch window    New Window

Verify new window page
    page should contain    New Window
