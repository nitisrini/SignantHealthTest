*** Settings ***
Library     ../Resources/PageObjects/BasePage.py
Library     ../Resources/CustomLibraries/RandomUserDetails.py
Library     ../Resources/PageObjects/RegistrationPage.py

Resource    common_functionalities.robot

Suite Setup     Initial driver setup
Suite Teardown  Clear browsers and drivers
Test Setup  Open the page


**** Variables ***
&{USER_DETAILS}


*** Test Cases ***
Register through web portal
    [Tags]  user_registration   all
    &{USER_DETAILS}  Generate Random User Details
    Click Reg Link
    Enter Username  ${USER_DETAILS.username}
    Enter Password  ${USER_DETAILS.password}
    Enter Firstname     ${USER_DETAILS.firstname}
    Enter Lastname  ${USER_DETAILS.familyname}
    Enter Phone Number  ${USER_DETAILS.phone}
    Click Register Button
#    Sleep    1s     To see the entered values
