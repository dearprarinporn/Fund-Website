*** Settings ***
Library    Browser

*** Variables ***
${URL}          http://localhost:4200/

*** Test Cases ***
Open Localhost Website
    Open Browser    ${URL}     
    Sleep    2s
input text search 
    Open Browser      ${URL}     
    Sleep    2s
    Browser.Fill text       id=app.dashboard.input.searchInput      KFSDLV
    Sleep    2s
click clear search button
    Open Browser      ${URL}     
    Sleep    2s
    Browser.Fill text       id=app.dashboard.input.searchInput      KFSDLV
    Sleep    2s
    Browser.Click            id=app.dashboard.button.clearSearchButton
    Sleep    2s

select checkbox
    Open Browser    ${URL}    headless=False
    Browser.Fill text     id=app.dashboard.input.searchInput      KFSDLV
    Sleep         2s
    Browser.Check Checkbox  For Fund Code  F1 checkbox  


    