*** Settings ***
Library    Browser
Resource    ../resource/Init Browser.robot


*** Test Cases ***
Search Fund From List
    Init Browser And Open Application
    Check Checkbox      css=dx-checkbox-icon


