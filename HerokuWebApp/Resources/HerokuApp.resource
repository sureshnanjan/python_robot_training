*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/
${BROWSER}        Chrome
*** Keywords ***
Launch Heroku
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    The Internet