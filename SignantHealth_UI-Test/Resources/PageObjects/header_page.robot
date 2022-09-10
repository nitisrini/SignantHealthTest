*** Settings ***
Library    SeleniumLibrary
Resource    ../Utils/common_functionalities.robot
Resource    ../PageLocators/header_page_locators.robot

*** Keywords ***
Click registration link
    Click Link    ${register_link}
    Wait for form to be visible

Click login link
    Click Link    ${login_link}
    Wait for form to be visible

Click logout link
    Click Link    ${logout_link}
    Wait Until Element Is Visible    ${login_link}