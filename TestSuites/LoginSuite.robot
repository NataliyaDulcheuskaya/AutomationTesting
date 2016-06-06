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
    [Setup]    Set Random Credentials
    [Template]    Login And Check Error Message UI
    ${randomCredentials}    ${ADMIN_PASSWORD}
    [Teardown]    Close Browser

LoginWithInvalidPasswordTest
    [Setup]    Set Random Credentials
    [Template]    Login And Check Error Message UI
    ${ADMIN_LOGIN}    ${randomCredentials}
    [Teardown]    Close Browser

LoginWithInvalidUserNameAndPasswordTest
    [Setup]    Set Random Credentials
    [Template]    Login And Check Error Message UI
    ${randomCredentials}    ${randomCredentials}
    [Teardown]    Close Browser

*** Keywords ***
