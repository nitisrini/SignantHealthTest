*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/global_variables.robot
Resource    ../PageLocators/header_page_locators.robot
Resource    ../PageLocators/common_locators.robot

***** Keywords ***
Validate user information
    Element Text Should Be    ${profilename}    ${USER_DETAILS.username}
    Element Text Should Be    ${username_textbox}    ${USER_DETAILS.username}
    Element Text Should Be    ${firstname_textbox}    ${USER_DETAILS.firstname}
    Element Text Should Be    ${familyname_textbox}    ${USER_DETAILS.familyname}
    Element Text Should Be    ${phone_textbox}    ${USER_DETAILS.phone}