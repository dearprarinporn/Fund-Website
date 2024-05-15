*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/ 
${fundCodeInput}     id=app.fundAdd.textBox.fundCodeField
${fundNameInput}     id=app.fundAdd.textBox.fundNameField
${fundTypeInput}     id=app.fundAdd.SelectBox.fundCodeField
${riskLevelInput}    id=app.fundAdd.SelectBox.fundTypeField
${transactionTypeInput}  id=app.fundAdd.SelectBox.transactionTypeField
${navInput}          id=app.fundAdd.numberBox.navField
${unitInput}         id=app.fundAdd.numberBox.unitField
${backButton}        id=app.fundAdd.Button.Back
${submitButton}      id=app.fundAdd.Button.Submit
${addNewFundButton}  id=app.dashboard.Button.addNewFund
${translateTHButton}    id=app.navbar.button.translate.th
${translateENButton}    id=app.navbar.button.translate.en
${clearSearchButton}    id=app.dashboard.button.clearSearchButton
${inputSearch}      id=app.dashboard.input.searchInput
${deleteSelectedRecords}        id="app.dashboard.button.deleteSelectedRecords"



*** Test Cases ***
test click add new fund button and back to dashboard
    Open Browser      ${URL}        headless=False    
    Sleep    3s
    Browser.Click     ${addNewFundButton}
    Sleep    3s
    Browser.Click     ${backButton} 
    Sleep    3s
    Close Browser


test click translate button
    Open Browser      ${URL}        headless=False   
    Sleep    3s
    Browser.Click     ${translateTHButton}
    Sleep    3s
    Browser.Click     ${translateENButton}
    Sleep    3s
    Close Browser

test input text search 
    Open Browser      ${URL}     headless=False
    Sleep    3s
    Browser.Fill text       ${inputSearch}      KFSDLV
    Sleep    3s
    Browser.Click       ${clearSearchButton}
    Sleep    3s
    Close Browser


Test Fill Add Fund Form
    Open Browser         http://localhost:4200/add        headless=False
    Sleep                3s
    Browser.Fill Text            ${fundCodeInput}     F13
    Browser.Fill Text            ${fundNameInput}     My Fund
    Browser.Fill Text            ${navInput}          2
    Browser.Fill Text            ${unitInput}         4
    Sleep                3s
    Click Element        ${submitButton}
    Sleep                5s
    Close Browser