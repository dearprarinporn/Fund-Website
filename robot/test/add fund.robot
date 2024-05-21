*** Settings ***
Library    Browser
Resource    ../resource/Add new fund.robot
Resource    ../resource/Init Browser.robot


*** Test Cases ***
Test Fund Insert
    Open Browser To Fund Add Page
    Insert Fund data    A20     QWERT111111     GOLD        2       Subscription        2       4


*** Keywords ***
Open Browser To Fund Add Page
    Init Browser And Open Application
    Click       xpath=//*[@id="app.dashboard.Button.addNewFund"]/div/span
