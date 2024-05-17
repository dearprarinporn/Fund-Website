*** Settings ***
Library    Browser

*** Variables ***
${URL}    http://localhost:4200/
${FUND_CODE}   F1

*** Test Cases ***
Select Fund
    Open Browser    ${URL}
    Sleep    2s
    Check Checkbox For Fund Code    ${FUND_CODE}
    Sleep    2s

*** Keywords ***
Open Browser To Application
    New Browser    chromium
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page    ${BASE_URL}
    Wait For Elements State    id=gridContainer    visible

Check Checkbox For Fund Code
    [Arguments]    ${fund_code}
    ${row_locator}=    Get Row Locator For Fund Code    ${fund_code}
    ${checkbox_locator}=    Get Checkbox Locator For Row    ${row_locator}
    Check Checkbox    ${checkbox_locator}