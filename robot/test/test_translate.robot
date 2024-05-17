*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 

*** Test Cases ***
test click translate TH button 
    Open Browser      ${URL}        headless=False   
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.th"]
    Sleep    1s
test click translate EN button 
    Open Browser      ${URL}        headless=False   
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.en"]/div
    Sleep    1s
test click translate EN button in add new fund page
    Open Browser      ${URL}        headless=False   
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.th"]
    Sleep    1s
test click translate EN button in add new fund page
    Open Browser      ${URL}        headless=False   
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.en"]/div
    Sleep    1s    