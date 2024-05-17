*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 

*** Test Cases ***
click add new fund button 
    Open Browser      ${URL}        headless=False    
    Sleep    3s
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Sleep    3s
Click back to dashboard    
    Open Browser      ${URL}        headless=False    
    Sleep    3s
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Sleep    3s
    Browser.Click     xpath=//*[@id="app.fundAdd.Button.Back"]/div/span
    Sleep    3s
Add New Fund Test
    Open Browser    ${URL}add    headless=False
    Sleep         3s
    Browser.Input Text    xpath=//*[@id="dx_dx-3b1455b2-cb3e-865a-a441-b2a045a914fe_fundCode"]    AAAAA
    Sleep         2s
    Browser.Click           xpath=//*[@id="app.fundAdd.Button.Submit"]/div/span
    Sleep         5s