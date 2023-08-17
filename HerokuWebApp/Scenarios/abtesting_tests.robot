*** settings **
Resource    ../Resources/HomePage.resource
Resource    ../Resources/HerokuApp.resource
Resource    ../Resources/ABTesting.resource

*** Test Cases ***
Without OptOut
    Launch Heroku
    Go To Example   A/B Testing
    Verify Heading

With OptOut
    Launch Heroku
    Disable AB Testing
    Go To Example   A/B Testing
    Verify Heading