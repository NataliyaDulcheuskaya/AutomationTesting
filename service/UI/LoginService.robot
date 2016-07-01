*** Settings ***
Resource          ../../page/LoginPage.robot
Resource          ../../page/NavigatorPage.robot

*** Keywords ***
Login And Check Top Logo Visible UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    Check Top Logo Image Visible

Login And Check Error Message UI
    [Arguments]    ${login}    ${password}
    [Documentation]    This keyword is intented for negative checks
    Login    ${login}    ${password}
    Check Error Message Presense
