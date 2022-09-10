*** Settings ***
Library    SeleniumLibrary
Library    Collections

Resource    global_variables.robot
Resource    ../PageLocators/common_locators.robot

*** Variables ***
# Default browser
${browser}  Chrome
# Default url
${url}  http://localhost:8080

${home_page_not_loaded_error}   error:Home page is not loaded properly
${form_not_visible_error}   error:Form is not visible
#&{drivers_dict}

***** Keywords ***
Initial driver setup
    Set driver paths and check if browser is valid  ${browser}
    Create Webdriver    ${browser}  executable_path=${drivers_dict.${browser}}
    Generate user details

Open the page
    Go To    ${url}
    Maximize Browser Window
    Wait Until Element Is Visible    ${app_header}  None    ${home_page_not_loaded_error}

Set driver paths and check if browser is valid
    [Arguments]     ${browser}
    Set Suite Variable    &{drivers_dict}  Chrome=${DRIVER_PATH}chromedriver.exe   Firefox=${DRIVER_PATH}geckodriver.exe
    Dictionary Should Contain Key   ${drivers_dict}     ${browser}  Supporting browser values are 'Chrome' and 'Firefox'

Wait for form to be visible
    Wait Until Element Is Visible    ${form}    None    ${form_not_visible_error}
