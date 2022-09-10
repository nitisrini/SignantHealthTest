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
Register through web portal
    header_page.Click registration link
    registration_page.Fill user details
#    Sleep    2s     To see the entered values
    registration_page.Click register button and validate user is registered successfully
