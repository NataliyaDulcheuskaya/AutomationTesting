*** Settings ***
Library           Selenium2Library
Resource          ../Service/UI/LoginService.robot
Resource          ../utils/TestDataGenerator.robot
Resource          ../service/UI/ProjectService.robot
Resource          ../globalConfig/Common.robot

*** Test Cases ***
CreateProject
    [Documentation]    The test is intended to check the creation of a project via Project Page.
    [Setup]    Run Keywords    Set Random String
    ...    AND    Login And Check Top Logo Visible UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    ...    AND    Open Project Page UI
    Create Project UI
    Check Created Project UI
    [Teardown]    Close Browser
