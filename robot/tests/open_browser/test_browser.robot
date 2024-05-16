*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/
${clearSearchButton}    id=app.dashboard.button.clearSearchButton
${inputSearch}      id=app.dashboard.input.searchInput



*** Test Cases ***
Open Localhost Website
    Open Browser    ${URL}     headless=False
    Sleep    2s
    Close Browser


test input text search 
    Open Browser      ${URL}     headless=False
    Sleep    2s
    Browser.Fill text       xpath=//*[@id="app.dashboard.input.searchInput"]      KFSDLV
    Sleep    2s
    Browser.Click       ${clearSearchButton}
    Sleep    2s
    Close Browser
