*** Settings ***
Library     String
Library     ../CustomLibraries/RandomUserDetails.py

**** Variables ***
${DRIVER_PATH}  ${EXECDIR}\\Resources\\Drivers\\
&{USER_DETAILS}

*** Keywords ***
Generate user details
    &{USER_DETAILS}  Generate Random User Details
    Set Global Variable    &{USER_DETAILS}  &{USER_DETAILS}

