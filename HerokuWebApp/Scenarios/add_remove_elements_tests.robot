*** settings **
Resource    ../Resources/AddRemoveElements.resource
Resource    ../Resources/HerokuApp.resource

*** Test Cases ***
Access Home Page
    Launch Heroku
    Navigate to AddRemoveElements page
    Check Heading
