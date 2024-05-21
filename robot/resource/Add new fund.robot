*** Settings ***
Library     Browser

*** Keywords ***
Insert Fund data
    [Arguments]     ${FUND_CODE}     ${FUND_NAME}   ${FUND_TYPE}    ${RISK_LEVEL}   ${TRANSACTION_TYPE}   ${NAV}    ${UNIT}    
    Fill text       xpath=//*[@myid="app.fundAdd.textbox.fundCode"]     ${FUND_CODE}
    Fill text       xpath=//*[@myid="app.fundAdd.textbox.fundName"]     ${FUND_NAME}

    Click    xpath=//*[@myid="app.fundAdd.SelectBox.fundType"]
    Click       

    Click    xpath=//*[@myid="app.fundAdd.SelectBox.riskLevel"]
    Click    //div[contains(@class, 'dx-item-content') and text()='${RISK_LEVEL}']

    Click    xpath=//*[@myid="app.fundAdd.SelectBox.transactionType"]
    Click    //div[contains(@class, 'dx-item-content') and text()='${TRANSACTION_TYPE}']

    Fill text       xpath=//*[@myid="app.fundAdd.NumberBox.nav"]     ${NAV}
    Fill text       xpath=//*[@myid="app.fundAdd.NumberBox.unit"]     ${UNIT}

    Click       xpath=//*[@id="app.fundAdd.button.Submit"]/div/span

    Sleep       5s