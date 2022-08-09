*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
${name}     Admin
${pass}     admin123


*** Test Cases ***
Login Orange
    Open page
    Login


*** Keywords ***
Open page
    open browser    ${url}    chrome

Login
    Input Text    id=txtUsername    ${name}
    Input Text    id=txtPassword    ${pass}
    Click Element    id=btnLogin
    Close Browser
