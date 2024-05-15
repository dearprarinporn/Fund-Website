*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/

*** Test Cases ***
test click add new fund button and click back button
    Open Browser      ${URL}    headless=False
    Browser.Click     id=addNewFundButton
    Browser.Click     id=backButton
    Sleep    10s
    Close Browser
