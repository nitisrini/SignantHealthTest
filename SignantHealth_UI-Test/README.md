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

## Project Structure
* **TestSuites**
  * *Suite 1* - Contains user registration test case
  * *Suite 2* - Contains user login test case

* **Resources**
  * *CustomLibraries* - Python library files to generate random user information
  * *Drivers*         - Standalone browser drivers (Chrome, Firefox)
  * *PageLocators*    - All the page related element locator values
  * *PageObjects*     - Actions to be perform on each pages
  * *Utils*           - Common methods and global variables
  
## How to execute the test
Execute the test through batch file 

*`Run.bat`*

*Or*

From the project directory, execute the following command to use default values,

*`robot .\TestSuites\`*
  
*Or*

From the project directory, execute the following to use custom url and browser values,

*`robot -v url:http://localhost:8080 -v browser:Chrome .\TestSuites\`*

Supporting browser values are *Chrome* and *Firefox*

## Reports
Once execution is completed, default report can be found at the project directory as `report.html` `log.html`

## Software Versions used

* *OS*  - Windows 11 Pro
* *Robot Framework* - 5.0.1
* *Robot Selenium library*  - 6.0.0
* *Faker* - 14.2.0
* *Chrome browser*  - 105.0.5195.102
* *Chromedriver* - 105.0.5195.52
* *Firefox browser* - 104.0.2
* *Geckodriver* - v0.31.0-win64
* *IDE* - PyCharm 2022.2.1 (Community Edition)

