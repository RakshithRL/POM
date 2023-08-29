*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/WelComePage.robot
Resource    ../Pages/DragandDropPage.robot

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  chrome

*** Test Cases ***
Drag and Drop Test
    open my browser    ${url}   ${browser}
    verify title
    click on drag and drop
    verify drag and drop page
    drag and drop element a to b
    drag and drop element b to a
    close browser