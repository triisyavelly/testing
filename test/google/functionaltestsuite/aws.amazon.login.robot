* Settings *
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

* Variables *
${LOGIN URL}      https://www.aws.amazon.com
${BROWSER}        Chrome

* Test Cases *
Valid Login
    Open Browser To Login Page
    Input Username    triisya.tv@gamil.com
    Input Password    Triisya01#
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

* Keywords *
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Submit Credentials
    Click Button    next_button

Welcome Page Should Be Open
    Title Should Be    Welcome Page