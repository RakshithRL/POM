*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/CheckBoxes.py

*** Keywords ***
Verify checkbox page
    page should contain    Checkboxes

Select Check Box one
    select checkbox    ${checkboxone}

Unselect Check Box one
    unselect checkbox   ${checkboxone}

Select Check Box two
    select checkbox    ${checkboxtwo}

Unselect Check Box two
    unselect checkbox    ${checkboxtwo}
