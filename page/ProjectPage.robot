*** Settings ***
Resource          resources/ProjectPageLocators.robot
Library           Selenium2Library
Resource          ../globalConfig/Common.robot
Library           BuiltIn

*** Keywords ***
Open Create Project Window
    Click Button    ${CREATE_PROJECT_BUTTON_LOCATOR}
    Wait Until Element Is Visible    ${CAPTION_CREATE_PROJECT_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Uncheck Upload Data
    Unselect Checkbox    ${CHECKBOX_DATA_UPLOAD_LOCATOR}
    Checkbox Should Not Be Selected    ${CHECKBOX_DATA_UPLOAD_LOCATOR}

Imput Project's Name
    Input Text    ${PROJECT_NAME_INPUT_TEXT_LOCATOR}    ${randomString}

Click Create Project
    Click Button    ${CONFIRM_CREATE_PROJECT_BUTTON_LOCATOR}
    Wait Until Element Is Not Visible    ${CAPTION_CREATE_PROJECT_LOCATOR}    ${SELENIUM_LONG_TIMEOUT}

Check Project Exist
    [Arguments]    ${randomCredentials}
    ${locator}    Set Variable    //a[text()='${randomCredentials}']
    ${locator2}    Set Variable    //a[text()='${randomCredentials}']/../..//tr//div[contains(text(),('Data Index State:'))]//b
    ${locator3}    Set Variable    //a[text()='${randomCredentials}']/../..//tr//div[contains(text(),('Percolator Index State:'))]//b
    Wait Until Page Contains Element    ${locator}    ${SELENIUM_DEFAULT_TIMEOUT}
    ${ActualText}    Get Text    ${locator2}
    ${ExpectedStatus}    Set Variable    OK
    Run Keyword And Continue On Failure    Wait Until Element Contains    ${locator2}    ${ExpectedStatus}    ${SELENIUM_DEFAULT_TIMEOUT}
    Run Keyword And Continue On Failure    Should Be Equal As Strings    ${ActualText}    ${ExpectedStatus}
    ${ActualText2}    Get Text    ${locator3}
    ${ExpectedStatus2}    Set Variable    OK
    Run Keyword And Continue On Failure    Wait Until Element Contains    ${locator3}    ${ExpectedStatus2}    ${SELENIUM_DEFAULT_TIMEOUT}
    Run Keyword And Continue On Failure    Should Be Equal As Strings    ${ActualText2}    ${ExpectedStatus2}
