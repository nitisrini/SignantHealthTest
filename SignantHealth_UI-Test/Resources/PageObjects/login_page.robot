*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/global_variables.robot
Resource    ../PageLocators/common_locators.robot
Resource    ../PageLocators/login_page_locators.robot

***** Keywords ***
Enter username and password
    Clear Element Text    ${username_textbox}
    Input Text    ${username_textbox}    ${USER_DETAILS.username}
    Clear Element Text    ${password_textbox}
    Input Password    ${password_textbox}    ${USER_DETAILS.password}

Click login button and validate user is logged in successfully
    Click Element    ${login_button}
    Wait Until Element Is Visible    ${user_info_table}