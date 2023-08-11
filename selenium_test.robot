*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${Login_url}   https://the-internet.herokuapp.com/
${Browser}   Chrome

*** Test Cases ***
Able to access heroku app
#     Open Browser    ${LOGIN_URL}   ${Browser}
    Open Heroku App
    [Teardown]    Close Browser

*** Keywords ***
Open Heroku App
     Open Browser    ${LOGIN_URL}   ${Browser}
     Title Should Be   The Internet

