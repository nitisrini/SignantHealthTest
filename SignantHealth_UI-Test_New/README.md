# Signant Health UI Test
Signant Health UI Test is an assignment to automate UI tests using Robot Framework.

## Pre-requisites
Make sure Python and Pip is installed in your system.
Version used to create this test is,
```bash
  Python 3.10.2
  pip 21.2.4
```
And keep the flask application running before executing the test. [Refer](https://github.com/sh-rdtaci/Flasky)
## Installation Instructions
Please install the below requirements to execute this test.

Install Robot framework
```bash
pip install robotframework

Confirm the installation using,
robot --version
```
Install Selenium library for Robot framework
```bash
pip install robotframework-seleniumlibrary
```
Install Faker library to generate random values
```bash
pip install Faker
```
Install WebdriverManager library to download and use browser drivers on runtime
```bash
pip install webdrivermanager
```

## Project Structure
* **TestSuites**
  * **TS_1_User_Registration.robot** - Contains user registration test case
  * **TS_2_User_Login.robot** - Contains user login test case
  * **common_functionalities.robot** - Contains common steps to be executed like set up and teardown

* **Resources**
  * **CustomLibraries/RandomUserDetails.py** - Python library files to generate random user information
  * **PageObjects/Drivers.py**     - Functions to download and install latest drivers on runtime for every run. Also, to delete the drivers after each execution.
  * **PageObjects/BasePage.py**     - Parent page class to hold some common actions
  * **PageObjects/..Page.py**     - Page related actions and custom keyword
  * **PageObjects/.._locators.py**     - Page related locator values
  
  
## How to execute the test
Execute the test through batch file 

*`Run.bat`*

*Or*

From the project directory, execute the following command to use default values,

*`robot .\TestSuites\`*

*Or*

From the project directory, execute the following command to use default values with tags,

*`robot -i all .\TestSuites\`*

Available tags are '_user_registration_', '_user_login_' and '_all_'

*Or*

From the project directory, execute the following to use custom url and browser values,

*`robot -i all -v url:http://localhost:8080 -v browser:Chrome .\TestSuites\`*

Supporting browser values are *Chrome* and *Firefox*

## Reports
Once execution is completed, default report can be found at the project directory as `report.html` `log.html`

## Software Versions used

* *OS*  - Windows 11 Pro
* *Robot Framework* - 5.0.1
* *Robot Selenium library*  - 6.0.0
* *Webdrivermanager* - 0.10.0
* *Faker* - 14.2.0
* *Chrome browser*  - 105.0.5195.102
* *Chromedriver* - 105.0.5195.52
* *Firefox browser* - 104.0.2
* *Geckodriver* - v0.31.0-win64
* *IDE* - PyCharm 2022.2.1 (Community Edition)

