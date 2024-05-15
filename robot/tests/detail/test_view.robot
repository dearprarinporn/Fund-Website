*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 

*** Test Cases ***
Test View Button
    Open Browser      ${URL}    headless=False
    Click Element    id=gridContainer /deep/ .dx-button-icon.dx-icon-eyeopen    Sleep    10s
    Close Browser
            


            