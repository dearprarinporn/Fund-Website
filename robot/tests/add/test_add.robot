*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 
${backButton}        id=app.fundAdd.Button.Back
${addNewFundButton}  id=app.dashboard.Button.addNewFund
${deleteSelectedRecords}        id="app.dashboard.button.deleteSelectedRecords"
${deleteRow}            id=app.dashboard.button.deleteRow


*** Test Cases ***
Add New Fund Test
    Open Browser      http://localhost:4200/add        headless=False    
    Sleep    3s
    Fill Text       xpath=//*[@id="dx_dx-3b1455b2-cb3e-865a-a441-b2a045a914fe_fundCode"]           AAAAA
    click           xpath=//*[@id="app.fundAdd.Button.Submit"]/div/span
    Sleep    5s


test click add new fund button and back to dashboard
    Open Browser      ${URL}        headless=False    
    Sleep    3s
    Browser.Click     xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
    Sleep    3s
    Browser.Click     xpath=//*[@id="app.fundAdd.Button.Back"]/div/span
    Sleep    3s
    Close Browser


    