*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${headinglocator}   tag:h3
${headingText}      Add/Remove Elements
${add_remove_elements_element}    xpath://a[@href="/add_remove_elements/"]

*** Keywords ***
Navigate to AddRemoveElements page
   Click Element     ${add_remove_elements_element}

Check Heading
   Element Should Contain  ${headinglocator}   ${headingText}