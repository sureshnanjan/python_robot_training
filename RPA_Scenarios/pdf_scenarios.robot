*** Settings ***
Library    RPA.PDF
Library    String

*** Tasks ***
Extract Data From First Page
    ${text} =    Get Text From PDF    Data${/}samplereport.pdf
    ${lines} =     Get Lines Matching Regexp    ${text}[${1}]    .+Formal.+
    Log    ${lines}

Get Invoice Number
    Open Pdf    invoice.pdf
    ${matches} =  Find Text    Invoice Number
    Log List      ${matches}

Fill Form Fields
    Switch To Pdf    form.pdf
    ${fields} =     Get Input Fields   encoding=utf-16
    Log Dictionary    ${fields}
    Set Field Value    Given Name Text Box    Mark
    Save Field Values    output_path=${OUTPUT_DIR}${/}completed-form.pdf
    ...                  use_appearances_writer=${True}