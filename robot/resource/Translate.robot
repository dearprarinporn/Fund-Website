*** Settings ***
Library     Browser


*** Keywords ***
click translate TH button 
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.th"]
    Sleep    1s

click translate EN button 
    Browser.Click     xpath=//*[@id="app.navbar.button.translate.en"]/div
    Sleep    1s
