*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 


*** Test Cases ***

test click translate button 
    Open Browser      ${URL}        headless=False   
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.th"]
    Sleep    1s
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.en"]/div
    Sleep    1s
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Sleep    1s
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.th"]
    Sleep    1s
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.en"]/div
    Sleep    1s

