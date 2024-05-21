*** Settings ***
Library   Browser
Resource    ../resource/Init Browser.robot

*** Test Cases ***
Test Title Welecomp Page
	Init Browser And Open Application
	Check Text Title
	Take Screenshot

*** Keywords ***
Check Text Title
	${PageTitle}=   Get Title
	Should Be Equal As Strings    ${PageTitle}      Fund