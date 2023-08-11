*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${headinglocator}   tag:h1
${subheadinglocator}    tag:h2
${headingText}      Welcome to the-internet
${subheadingText}   Available Examples


*** Keywords ***
Check Heading
    # The Emement Has Text Welcome to the-internet
    Element Should Contain  ${headinglocator}   ${headingText}

Check SubHeading
    #
    Element Should Contain  ${subheadinglocator}   ${subheadingText}

Go To Example
    [Arguments] ${examplename}

Get Available Example Count
    no operation