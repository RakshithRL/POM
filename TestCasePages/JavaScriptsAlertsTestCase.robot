*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/JavaScriptAlerts.robot
Resource    ../Pages/WelComePage.robot
*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Test Cases ***
Alerts Test
    set selenium speed    1 second
    open my browser    ${url}   ${browser}
    verify title
    click on javascript alerts
    click on js alert
    click on js confirm ok
    click on js confirm cancle
    close browser

