*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/WelComePage.py

*** Keywords ***
Open my browser
    [Arguments]    ${url}   ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

Verify title
    title should be    The Internet
    page should contain     Welcome to the-internet

Click on FormAuthentication
    click element    ${Form_Authentication}

Click on CheckBoxTest
    click element   ${check_boxes}

Click on JavaScript Alerts
    click element    ${javascript_alerts}

Click on Drag and Drop
    click element    ${draganddrop}

Click on DropDown
    click element    ${DropDown}

Click on Multiple Wondow
    click element    ${MultipleWindows}

