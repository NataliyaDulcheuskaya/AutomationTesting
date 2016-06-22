*** Settings ***
Library           ../../page/LoginPage.py
Library           ../../page/NavigatorPage.py

*** Keywords ***
Login And Check Top Logo Visible UI
    [Arguments]    ${login}    ${password}
    Login    ${CMP_ADRESS}    ${login}    ${password}
    Check Top Logo Image Visible

Login And Check Error Message UI
    [Arguments]    ${login}    ${password}
    [Documentation]    This keyword is intented for negative checks
    Login    ${CMP_ADRESS}    ${login}    ${password}
    Check Error Message Presense
