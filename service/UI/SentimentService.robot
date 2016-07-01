*** Settings ***
Resource          ../../page/SentimentPage.robot
Resource          ../../page/NavigatorPage.robot
Resource          ../../page/LoginPage.robot
Resource          ../../page/ProjectPage.robot

*** Keywords ***
Open Project UI
    Open Project
    Check Project Name

Open Sentiment Tab UI
    Open Sentiment Tab
    Check Sentiment Tab is opened

Modify Sentiment UI

Recalculate Sentiment UI
