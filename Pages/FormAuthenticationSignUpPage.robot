*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/FormAuthenticationSignUpPage.py

*** Keywords ***
Enter UserName
    [Arguments]    ${username}
    input text    ${loginUserName}      ${userName}

Enter password
    [Arguments]    ${password}
    input text    ${loginpassword}      ${password}

click on submit
    click button    ${loginbutton}

#Verify
 #   page should contain    Login Page

Verify Loop
    FOR     ${i}    IN RANGE    0   3
        ${username}=    Set Variable    user${i}
        ${password}=    Set Variable    password${i}
        Enter UserName    ${username}
        Enter password    ${password}
        click on submit
        page should contain    Login Page
    END