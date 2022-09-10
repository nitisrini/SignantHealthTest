@ECHO OFF
ECHO "**Start of Signant Health UI Test**"
PAUSE

:: To execute all feature files with default url and browser
:: robot .\TestSuites\

:: To execute all feature files with default url, tag and browser
:: robot -i all .\TestSuites\
:: Available tags are 'user_registration', 'user_login' and 'all'

:: To execute all feature files with tags, custom url and browser from command line
:: Default browser is Chrome
:: Supporting values for browser are 1. Chrome and 2. Firefox

robot -i all -v url:http://localhost:8080 -v browser:Chrome .\TestSuites\

ECHO "**End of Signant Health UI Test**"
PAUSE