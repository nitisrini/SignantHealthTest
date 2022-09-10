# Signant Health Api Test
Signant Health Api Test is an assignment to automate Api tests using Python, Requests library and BDD(Behave).

## Pre-requisites
Make sure Python and Pip are installed in your system.
Version used to create this test is,
```bash
  Python 3.10.2
  pip 21.2.4
```
And keep the flask application running before executing the test. [Refer](https://github.com/sh-rdtaci/Flasky)
## Installation Instructions
Please install the below requirements to execute this test.

Install Requests library
```bash
pip install requests

Confirm the installation using,
pip show requests
```
Install Behave to support Cucumber BDD framework
```bash
pip install behave

Confirm the installation using, 
behave --version
```
Install Faker library to generate random values
```bash
pip install Faker
```

## Project Structure
* **Features**
  * **TS1_UserRegistrationAndValidation.feature** - Contains user registration test case
  * **TS2_UserLoginAndValidation.feature** - Contains validate user information test case
  * **TS3_UserUpdationAndValidation.feature** - Contains update user information test case
  * **Steps** - Contains step-definition files
  * **environment.py** - Behave hooks

* **Utils**
  * *Configuration and Properties file*

* **CustomLibraries**
  * *Python library files to generate random user information*
  
## How to execute the test
Execute the test through batch file 

*`Run.bat`*

*Or*

From the project directory, execute the following command to use default values,

*`behave --no-capture .\Features\`*

*Or*

From the project directory, execute the following command to use default values and tags,

*`behave --no-capture --tags=@all .\Features\`*

Available tags are '_user_registration_', '_user_login_', '_update_user_' and '_all_'
  
*Or*

From the project directory, execute the following to use custom url,

*`behave --no-capture --tags=@all .\Features\ -D baseuri='http://localhost:8080'`*

## Reports
Default report is not available for this test. To see the allure reports, follow the below instructions,
* Install Allure for Behave,
  * *pip install allure-behave*
* Execute the test using following command from the project directory,
  * *behave --no-capture -f allure_behave.formatter:AllureFormatter -o AllureReports*
  * *AllureReports* - Reports folder name. It can be changed.
* If Allure is not already installed in system, 
  * Download latest source code(Zip file preferred) of allure-commandline from [here](https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/)
  * Unzip the downloaded source code
  * Go to allure-commandline bin path in command line. (Ex: *<downloaded_dir>\allure-commandline-2.19.0\allure-2.19.0\bin*)
* Run the command
  * *allure serve <AllureReports_dir>*
  * Allure server will run and open the report in browser

## Software Versions used
* *OS*  - Windows 11 Pro
* *Requests*  - 2.28.1
* *Behave* - 1.2.6
* *Faker*  - 14.2.0
* *IDE* - VS Code (1.71.0)

