*** Settings ***
Documentation   Utilities for browser automation
Library    RPA.Browser

*** Keywords ***
Open website in browser
    [Arguments]    ${url}    ${browser_name}
    Open Available Browser    ${url}    browser_selection=${browser_name}

*** Keywords ***
Search for data one by one from
    [Arguments]    @{testdata}
    FOR    ${element}    IN    @{testdata}
        Log    ${element}
        Input Text        alias:search_txt_box   ${element}
        Submit Form
        Go To    https://www.google.com
    END