*** Settings ***
Library           Selenium2Library
Resource          resources/NavigatorPageLocators.robot
Resource          resources/ProjectPageLocators.robot
Resource          ../globalConfig/Common.robot

*** Variables ***

*** Keywords ***
Open Project Page
    Click Image    ${TOP_LOGO_IMAGE_LOCATOR}
    Wait Until Element Is Visible    ${CREATE_PROJECT_BUTTON_LOCATOR}    ${SELENIUM_LONG_TIMEOUT}

Check Top Logo Image Visible
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_LONG_TIMEOUT}    Element ${TOP_LOGO_IMAGE_LOCATOR} is not visible during ${SELENIUM_LONG_TIMEOUT} after login
