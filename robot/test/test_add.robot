*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 

*** Test Cases ***
Add New Fund Test
    Open Browser    ${URL}add    headless=False     
    Sleep         3s
    Browser.Fill text    xpath=//*[@myid="app.fundAdd.textbox.fundCode"]            F30
    Sleep         2s
    Browser.Fill text    xpath=//*[@myid="app.fundAdd.textbox.fundName"]            ASDFG
    Sleep         2s
    Browser.Click           xpath=//*[@myid="app.fundAdd.SelectBox.fundType"]     
    Sleep         2s     
    Select Options By    xpath=//*[@myid="app.fundAdd.SelectBox.fundType"]      value        GOLD
    Sleep         2s     
    Browser.Click       
    Browser.Fill text           xpath=//*[@myid="app.fundAdd.NumberBox.nav"]     2
    Browser.Fill text           xpath=//*[@myid="app.fundAdd.NumberBox.unit"]     4
    Sleep         4s    
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

