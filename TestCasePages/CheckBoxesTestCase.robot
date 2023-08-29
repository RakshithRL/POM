*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/WelComePage.robot
Resource    ../Pages/CheckBoxesPage.robot

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Test Cases ***
CheckBox Test
    open my browser     ${url}      ${browser}
    verify title
    Click on CheckBoxTest
    verify checkbox page
    unselect check box two
    unselect check box one
    close browser


