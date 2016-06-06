*** Settings ***
Library           String

*** Keywords ***
Get Random String
    [Arguments]    ${lenth}=
    ${string}    Generate Random String    ${lenth}
    [Return]    ${string}

Set Random Credentials
    ${randomCredentials}    Get Random String
    Set Suite Variable    ${randomCredentials}
    [Return]    ${randomCredentials}
