*** Settings ***
Library     ../Resources/CustomLibraries/RandomUserDetails.py
Library     ../Resources/PageObjects/RegistrationPage.py
Library     ../Resources/PageObjects/LoginPage.py
Library     ../Resources/PageObjects/UserInformationPage.py
Library    Collections

Resource    common_functionalities.robot

Suite Setup     Initial driver setup
Suite Teardown  Clear browsers and drivers
Test Setup  Open the page


**** Variables ***
&{USER_DETAILS}


*** Test Cases ***
Review my own user information from the main view
    [Tags]  user_login  all
    Set Log Level    INFO
    &{USER_DETAILS}  Generate Random User Details
    Log    Generated new user details
    Log Dictionary  ${USER_DETAILS}
    Click Reg Link
    Log    Registering new user
    Enter Username  ${USER_DETAILS.username}
    Enter Password  ${USER_DETAILS.password}
    Enter Firstname     ${USER_DETAILS.firstname}
    Enter Lastname  ${USER_DETAILS.familyname}
    Enter Phone Number  ${USER_DETAILS.phone}
    Click Register Button
    Log    New user registered
    Log    Login as new user
#    Sleep    1s     To see the entered values
    Enter Username  ${USER_DETAILS.username}
    Enter Password  ${USER_DETAILS.password}
    Click Login Button
    Log    New user login is successfull
#    Sleep    1s     To see the entered values
    Log    Validate newly registered user details
    Validate Username    ${USER_DETAILS.username}
    Validate Firstname    ${USER_DETAILS.firstname}
    Validate Lastname    ${USER_DETAILS.familyname}
    Validate Phone    ${USER_DETAILS.phone}
    UserInformationPage.Click Logout Link
    Log    User logged out
