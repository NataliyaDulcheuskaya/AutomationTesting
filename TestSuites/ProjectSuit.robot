*** Settings ***
Library           Selenium2Library
Resource          ../Service/UI/LoginService.robot
Resource          ../utils/TestDataGenerator.robot
Resource          ../service/UI/ProjectServis.robot
Resource          ../globalConfig/Common.robot

*** Test Cases ***
CreateProject
    [Setup]    Set Random Credentials
    Login And Check Top Logo Visible UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Open Project Page UI
    Create Project UI
    Check Created Project UI
    [Teardown]    Close Browser
