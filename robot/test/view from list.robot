*** Settings ***
Library    Browser
Resource    ../resource/Init Browser.robot

*** Test Cases ***
Click View Button
    Init Browser And Open Application
    Click Eyeopen Icon

*** Keywords ***
Click Eyeopen Icon
  Click    css=[data-fund-code="F1"] .dx-icon-eyeopen


            