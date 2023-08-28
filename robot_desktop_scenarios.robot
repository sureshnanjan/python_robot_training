** Settings **
Library         FlaUILibrary  screenshot_on_failure=False
Resource    ./flayui_utils.resource

** Test Cases **
Launch Application
    ${PID}  Launch Application  ${TEST_APP}
    Log     ${PID}
    Should Not Be Equal As Integers  ${PID}  0
    Click   ${key_1}
    Click   ${key_2}
    ${NAME}     Get Name From Element   ${results_display}
    Log     ${NAME}
    Name Contains Text      98      ${results_display}
    ${TEXT}     Get Text From Textbox   ${results_display}
    Log     ${TEXT}

