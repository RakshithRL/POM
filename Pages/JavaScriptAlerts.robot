*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/JavaScriptsAlerts.py

*** Keywords ***
Click on JS Alert
    click button    ${click_jsalert}
    handle alert    accept
    page should contain     You successfully clicked an alert

Click on JS Confirm ok
    click button    ${click_jsconfirm}
    handle alert    accept
    page should contain    You clicked: Ok

Click on JS Confirm cancle
    click button    ${click_jsconfirm}
    handle alert    dismiss
    page should contain    You clicked: Cancel
