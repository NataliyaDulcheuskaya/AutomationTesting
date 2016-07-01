*** Settings ***
Library           Selenium2Library
Resource          resources/SentimentPageLLocators.robot
Resource          ../globalConfig/Common.robot

*** Keywords ***
Open Project
    Click Link    ${PROJECT1_LINK}

Check Project Name
    Wait Until Element Contains    ${PROJECT1_NAME}    ${SELENIUM_LONG_TIMEOUT}

Open Sentiment Tab

Check Sentiment Tab is opened
