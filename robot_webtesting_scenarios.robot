*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/
${BROWSER}        Chrome

*** Test Cases ***
Able to Access Heroku App
    Open Heroku App
    Go To Example
    Validate Heading
    [Teardown]    Close Browser

Bad Test Case
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    The Internet
    Click Link      A/B Testing
    Page Should Contain     A/B Test Variation 1

*** Keywords ***
Open Heroku App
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    The Internet

Validate Heading
    Page Should Contain     A/B Test Variation 1

Go To Example
    Click Link      A/B Testing


