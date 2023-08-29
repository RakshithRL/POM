*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/WelComePage.robot
Resource    ../Pages/MultipleWindowsPage.robot

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Test Cases ***
Multiple window page Test
    open my browser    ${url}   ${browser}
    verify title
    Click on Multiple Wondow
    verify page
    Open New Window
    Test between Windows
    Verify new window page
    close browser