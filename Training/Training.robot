*** Settings ***
Documentation    Suite description
Library  RequestsLibrary
Library  Collection

*** Test Cases ***
Sample Test Case
    Log  "Test Case"
    ${var}  set variable  100
    log  ${var}
    My Custom Keyword Demo
    should be equal  ${var}  100

Failing Test Case
    Log  "Another Test Case"
    ${var}  set variable  200
    log  ${var}
    My Custom Keyword Demo
    should be equal  ${var}  100
*** Keywords ***
My Custom Keyword Demo
    log  "Custom Keyword"
