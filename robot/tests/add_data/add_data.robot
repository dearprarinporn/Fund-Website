*** Settings ***
Library    Browser
Library    SeleniumLibrary

*** Variables ***
${URL}          http://localhost:4200/ 
${OUTPUT_DIR}   C:/Users/Prarinporn.choo/robot/result/add

*** Test Cases ***
Test Fill Add New Fund Form
    Open Browser    ${URL}    headless=False
    Sleep    5s
    Click Element    id=addNewFundButton
    Input Text    id=fundCodeField    F13
    Input Text    id=fundNameField    ASDFG
    # เลือกค่าจาก dropdown
    Select From List by Value    id=fundTypeField    GOLD
    Select From List by Value    id=riskLevelField    YourRiskLevelValue
    Select From List by Value    id=transactionTypeField    YourTransactionTypeValue
    Input Text    id=navField    123.45
    Input Text    id=unitField    100
    Click Element    id=submitButton
    Sleep    5s
    Close Browser
    



