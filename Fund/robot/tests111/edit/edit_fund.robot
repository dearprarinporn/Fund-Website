*** Settings ***
Library    Browser
Library    SeleniumLibrary

*** Variables ***
${URL}         http://localhost:4200/

*** Test Cases ***
click back button
    Open Browser      http://localhost:4200/        headless=False    
    Sleep    3s
    Browser.Click     xpath=//*[@id="dx-e21842dc-aa84-26ad-9a76-985a031cc427"]/tbody/tr[5]/td[11]/a[2]
    Sleep    3s
    Select Checkbox    id=checkbox_id
