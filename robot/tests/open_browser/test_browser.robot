*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/



*** Test Cases ***
Open Localhost Website
    Open Browser    ${URL}     headless=False
    Sleep    30s
    Close Browser


