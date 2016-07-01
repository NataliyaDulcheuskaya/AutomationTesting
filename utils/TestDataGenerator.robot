*** Settings ***
Library           String

*** Keywords ***
Set Random String
    [Arguments]    ${lenth}=
    ${randomString}    Generate Random String    ${lenth}
    Set Suite Variable    ${randomString}
    [Return]    ${randomString}
