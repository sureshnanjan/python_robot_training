*** Settings ***
Documentation    Suite description
Library          SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://the-internet.herokuapp.com/
${Browser}      Chrome


*** Test Cases ***
Able to access heroko app

    Open Heroko App
    [Tear down]     Close Browser


*** Keywords ***
Open Heroko App
    open browser
    title should be     The Internet