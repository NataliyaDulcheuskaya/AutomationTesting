*** Variables ***
${TEST_ENVIRONMENT}    QA11
${SELENIUM_DEFAULT_TIMEOUT}    10
${SELENIUM_LONG_TIMEOUT}    90

*** Keywords ***
Set Test Environment
    [Arguments]    ${testEnv}=${EMPTY}
    ${NEW_TEST_ENV}    Set Variable If    '${testEnv}'=='${EMPTY}'    ${TEST_ENVIRONMENT}    ${testEnv}
    Import Resource    ${CURDIR}${/}${NEW_TEST_ENV}.robot
    Set Global Variable    ${CMP_ADRESS}
    Set Global Variable    ${ADMIN_LOGIN}
    Set Global Variable    ${ADMIN_PASSWORD}
