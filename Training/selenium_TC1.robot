*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${url}  https://the-internet.herokuapp.com/
${browser}  Chrome

*** Test Cases ***
Open Heroku App
    Access Page
    [Teardown]  Close Browser


*** Keywords ***
Access Page
    Create Webdriver    ${browser}    executable_path=D:/PierianDx/Automation/UI/cgw_ui_automation_tests/src/main/java/resources/chromedriver.exe
    Go To    ${url}
    Title Should Be  The Internet