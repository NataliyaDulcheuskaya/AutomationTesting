*** Settings ***
Library           Selenium2Library
Resource          resources/LoginPageLocators.robot
Resource          ../globalConfig/Common.robot

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Open Browser    ${CMP_ADRESS}
    Input Text    ${LOGIN_INPUT_TEXT_LOCATOR}    ${password}
    Input Password    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${login}
    Click Button    ${SUBMIT_BUTTON_LOCATOR}

Check Error Message Presense
    Wait Until Element Is Visible    ${ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    Element ${ERROR_MESSAGE_LOCATOR} is not visible during ${SELENIUM_DEFAULT_TIMEOUT} after login
