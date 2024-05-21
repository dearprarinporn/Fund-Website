*** Settings ***
Library     Browser


*** Keywords ***
Init Browser And Open Application
    New Browser    browser=chromium             headless=false
    New Context    viewport={ "width": 1280, "height": 720 }
    New Page    http://localhost:4200/
