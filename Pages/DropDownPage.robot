*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify DropDown Page
    page should contain     Dropdown List

Select Option One
    [Arguments]    ${Option1}
    select from list by label    dropdown   ${Option1}
    sleep    2seconds

Select Option Two
    [Arguments]    ${Option2}
    select from list by label    dropdown  ${Option2}
    sleep    1seconds