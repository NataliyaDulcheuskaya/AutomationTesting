*** Settings ***
Suite Setup
Library           Selenium2Library
Resource          ../service/UI/LoginService.robot
Resource          ../utils/TestDataGenerator.robot

*** Variables ***

*** Test Cases ***
LoginAsAdminTest
    [Template]    Login And Check Top Logo Visible UI
    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    [Teardown]    Close Browser

LoginWithInvalidUserNameTest
    [Setup]    Set Random String
    [Template]    Login And Check Error Message UI
    ${randomString}    ${ADMIN_PASSWORD}
    [Teardown]    Close Browser

LoginWithInvalidPasswordTest
    [Setup]    Set Random String
    [Template]    Login And Check Error Message UI
    ${ADMIN_LOGIN}    ${randomString}
    [Teardown]    Close Browser

LoginWithInvalidUserNameAndPasswordTest
    [Setup]    Set Random String
    [Template]    Login And Check Error Message UI
    ${randomString}    ${randomString}
    [Teardown]    Close Browser

*** Keywords ***
