*** Settings ***
Library    Browser
Resource    ../resource/Init Browser.robot
Resource    ../resource/Search.robot


*** Test Cases ***
Search Fund From List
    Init Browser And Open Application
    input text search       KFSDLV

