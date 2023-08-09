*** Settings ***
Documentation     Suite description
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${LOGIN URL}      http://google.com
${BROWSER}        Chrome

*** Test Cases ***
Test title
    Create Webdriver    Chrome    executable_path=D:/PierianDx/Automation/UI/cgw_ui_automation_tests/src/main/java/resources/chromedriver.exe
    Go To    ${LOGIN URL}

