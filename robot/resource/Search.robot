*** Settings ***
Library     Browser


*** Keywords ***
input text search 
    [Arguments]     ${FUND_NAME} 
    Fill text       id=app.dashboard.input.searchInput      ${FUND_NAME}

