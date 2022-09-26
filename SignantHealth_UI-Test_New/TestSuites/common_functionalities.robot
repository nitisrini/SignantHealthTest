*** Settings ***
Library     ../Resources/PageObjects/BasePage.py


*** Variables ***
# Default browser
${browser}  Chrome
# Default url
${url}  http://localhost:8080


***** Keywords ***
Initial driver setup
    BasePage.Initiate Driver    ${browser}

Clear browsers and drivers
    BasePage.Close Page

Open the page
    BasePage.Open Page    ${url}
