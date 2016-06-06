*** Settings ***
Resource          resources/ProjectPageLocators.robot
Library           Selenium2Library

*** Keywords ***
Open Create Project Window
    Click Button    ${CREATE_PROJECT_BUTTON_LOCATOR}
    Wait Until Element Is Visible    ${CAPTION_CREATE_PROJECT_LOCATOR}

Uncheck Upload Data
    Unselect Checkbox    ${CHECKBOX_DATA_UPLOAD_LOCATOR}
    Checkbox Should Not Be Selected    ${CHECKBOX_DATA_UPLOAD_LOCATOR}

Imput Project's Name
    Input Text    ${PROJECT_NAME_INPUT_TEXT_LOCATOR}    ${randomCredentials}

Click Create Project
    Click Button    ${CONFIRM_CREATE_PROJECT_BUTTON_LOCATOR}
    Wait Until Element Is Not Visible    ${CAPTION_CREATE_PROJECT_LOCATOR}    ${SELENIUM_LONG_TIMEOUT}

Check Project Exist
    Select From List By Value    \    ${randomCredentials}
