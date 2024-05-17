*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/

*** Test Cases ***
Open Localhost Website
    Open Browser    ${URL}     headless=False
    Sleep    2s
input text search 
    Open Browser      ${URL}     headless=False
    Sleep    2s
    Browser.Fill text       xpath=//*[@id="app.dashboard.input.searchInput"]      KFSDLV
    Sleep    2s
click clear search button
    Open Browser      ${URL}     headless=False
    Sleep    2s
    Browser.Fill text       xpath=//*[@id="app.dashboard.input.searchInput"]      KFSDLV
    Sleep    2s
    Browser.Click       //*[@id="app.dashboard.button.clearSearchButton"]/div
    Sleep    2s