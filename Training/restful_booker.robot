*** Settings ***
Documentation    Suite description
Library  RequestsLibrary
Library  Collection

*** Variables ***
${uri}     https://restful-booker.herokuapp.com

*** Test Cases ***
Get bookings from restful booker
    Create Session  sesn  ${uri}
    ${body}  create dictionary  firstName=Chetan
    ${response}  GET On Session  sesn   /booking  ${body}
    Status Should Be  200
    #log to console  ${response.json()}
    Log  ${response.json()}
