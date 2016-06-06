*** Settings ***
Resource          ../../page/resources/LoginPageLocators.robot
Resource          ../../page/NavigatorPage.robot
Resource          ../../globalConfig/Common.robot
Resource          ../../page/ProjectPage.robot

*** Keywords ***
Open Project Page UI
    Open Project Page

Create Project UI
    Open Create Project Window
    Uncheck Upload Data
    Imput Project's Name
    Click Create Project

Check Created Project UI
    [Arguments]    ${randomCredentials}=${randomCredentials}
    Check Project Exist    ${randomCredentials}
