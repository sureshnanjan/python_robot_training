*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${abheadinglocator}   tag:h3
${paragraphlocator}    tag:p
${abheadingText}      A/B Test Variation 1

*** Keywords ***
Verify Heading
    Element Should Contain  ${abheadinglocator}   ${abheadingText}

Disable AB Testing
    Add Cookie  optimizelyOptOut    true