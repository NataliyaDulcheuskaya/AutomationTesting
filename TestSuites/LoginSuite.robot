*** Settings ***
Library           Selenium2Library
Library           ../utils/TestDataGen.py    #Resource | ../utils/TestDataGenerator.robot
Library           ../globalConfig/PythonPropertyReader.py
Library           ../service/UI/LoginService.py

*** Variables ***

*** Test Cases ***
LoginAsAdminTest
    Login And Check Top Logo Visible UI
    [Teardown]    Close Browser

LoginWithInvalidUserNameTest
    Login And Check Error Message UI
    [Teardown]    Close Browser

LoginWithInvalidPasswordTest
    Login And Check Error Message UI
    [Teardown]    Close Browser

LoginWithInvalidUserNameAndPasswordTest
    Login And Check Error Message UI
    [Teardown]    Close Browser

*** Keywords ***
