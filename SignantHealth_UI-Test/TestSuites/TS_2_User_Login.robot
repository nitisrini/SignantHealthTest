*** Settings ***
Library    SeleniumLibrary
Library     String

Resource    ../Resources/PageObjects/header_page.robot
Resource    ../Resources/PageObjects/registration_page.robot
Resource    ../Resources/PageObjects/login_page.robot
Resource    ../Resources/PageObjects/user_information_page.robot
Resource    ../Resources/Utils/common_functionalities.robot
Resource    ../Resources/Utils/global_variables.robot

Suite Setup     Initial driver setup
Suite Teardown  Close All Browsers
Test Setup  Open the page


*** Test Cases ***
Review my own user information from the main view
    header_page.Click login link
    login_page.Enter username and password
#    Sleep    2s     To see the entered values
    login_page.Click login button and validate user is logged in successfully
    user_information_page.Validate user information
#    Sleep    2s     To see the entered values
    header_page.Click logout link

