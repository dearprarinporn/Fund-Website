*** Settings ***
Library    Browser
Resource    ../resource/Init Browser.robot
Resource    ../resource/Translate.robot




*** Test Cases ***
Translate Dashboard Page
    Init Browser And Open Application
    #Translate TH Language
    click translate TH button
    #Translate TH Language 
    click translate EN button

Translate Add New Fund Page
    Open Browser To Fund Add Page
    #Translate TH Language
    click translate TH button
    #Translate TH Language 
    click translate EN button






*** Keywords ***
Open Browser To Fund Add Page
    Init Browser And Open Application
    Click       xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span


