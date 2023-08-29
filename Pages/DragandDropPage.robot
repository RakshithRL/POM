*** Settings ***
Library    SeleniumLibrary
Variables    ../BasePageLocators/DragandDrop.py

*** Keywords ***
Verify Drag and Drop Page
    page should contain    Drag and Drop

Drag and Drop element A to B
    drag and drop    ${Element_A}       ${Element_B}

Drag and Drop element B to A
    drag and drop    ${Element_B}       ${Element_A}

