*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/WelComePage.robot
Resource    ../Pages/DropDownPage.robot

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Test Cases ***
Drop Down Test
    open my browser     ${url}      ${browser}
    Verify title
    click on DropDown
    verify dropdown page
    select option one   Option 1
    select option two   Option 2
    close browser