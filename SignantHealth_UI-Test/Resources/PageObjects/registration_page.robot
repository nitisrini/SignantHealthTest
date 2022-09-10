*** Settings ***
Library    SeleniumLibrary

Resource    login_page.robot
Resource    ../Utils/common_functionalities.robot
Resource    ../Utils/global_variables.robot
Resource    ../PageLocators/common_locators.robot
Resource    ../PageLocators/registration_page_locators.robot

*** Variables ***
${already_registered_error}     User not registered. User already registered error appears..
${user_not_registered_message}     User not registered and taken to Login page..
${login_text}   Log In

*** Keywords ***
Fill user details
    login_page.Enter username and password
    Clear Element Text    ${firstname_textbox}
    Input Text    ${firstname_textbox}    ${USER_DETAILS.firstname}
    Clear Element Text    ${familyname_textbox}
    Input Text    ${familyname_textbox}    ${USER_DETAILS.familyname}
    Clear Element Text    ${phone_textbox}
    Input Text    ${phone_textbox}    ${USER_DETAILS.phone}

Click register button and validate user is registered successfully
    Click Element    ${register_button}
    Element Should Not Be Visible    ${error_message}    ${already_registered_error}
    Element Text Should Be    ${login_header}    ${login_text}   ${user_not_registered_message}