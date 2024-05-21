*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com/
${BROWSER}  Chrome

*** Test Cases ***
Open Example Test Page
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Google
    Input Text    //*[@name='q']    AAAA
    Close All Browsers


/div/input