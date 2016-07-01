*** Settings ***
Resource          ../../page/LoginPage.robot
Resource          ../../page/NavigatorPage.robot
Resource          ../../page/ProjectPage.robot

*** Keywords ***
Open Project Page UI
    Open Project Page

Create Project UI
    [Arguments]    ${rndomString}
    Open Create Project Window
    Uncheck Upload Data
    Input Projects Name    ${rndomString}
    Click Create Project

Check Created Project UI
    [Arguments]    ${rndomString}
    Check Project Exist    ${rndomString}
