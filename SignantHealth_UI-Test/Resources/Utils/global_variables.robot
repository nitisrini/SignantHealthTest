*** Settings ***
Library     String
Library     ../CustomLibraries/RandomUserDetails.py

**** Variables ***
${DRIVER_PATH}  ${EXECDIR}\\Resources\\Drivers\\
&{USER_DETAILS}
#${username_prefix}   Username_
#${password_prefix}   Password_
#${firstname_prefix}   Firstname_
#${familyname_prefix}   Lastname_

*** Keywords ***
Generate user details
    ${dic_length}   Get Length    ${USER_DETAILS}
    IF  ${dic_length} == 0
        &{USER_DETAILS}  Generate Random User Details
        Set Global Variable    &{USER_DETAILS}  &{USER_DETAILS}
#        ${random_string} =    Generate Random String  5   [LOWER]
#        ${random_number} =    Generate Random String  10   [NUMBERS]
#        Set Global Variable   &{USER_DETAILS}     username=${username_prefix}${random_string}    password=${password_prefix}${random_string}     firstname=${firstname_prefix}${random_string}    familyname=${familyname_prefix}${random_string}   phone=${random_number}
    END

