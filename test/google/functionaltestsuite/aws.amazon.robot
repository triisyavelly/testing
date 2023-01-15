* Settings *
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

* Variables *
${LOGIN URL}      https://www.aws.amazon.com
${BROWSER}        Chrome

* Test Cases *
User want to open amazo
   Open Browser    ${LOGIN URL}    ${BROWSER}
    [Teardown]    Close Browser
