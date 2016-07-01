*** Settings ***
Resource          ../globalConfig/Common.robot
Resource          ../service/UI/LoginService.robot
Resource          ../utils/TestDataGenerator.robot
Resource          ../service/UI/SentimentService.robot
Resource          ../service/UI/ProjectService.robot

*** Test Cases ***
ModifyingRecalculatingSentiment
    [Setup]    Run Keywords    Set Random String
    ...    AND    Login And Check Top Logo Visible UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    ...    AND    Open Project Page UI
    Open Project UI
    Open Sentiment Tab UI
    Modify Sentiment UI
    Recalculate Sentiment UI
    [Teardown]    Close Browser
