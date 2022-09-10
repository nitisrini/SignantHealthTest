@ECHO OFF
ECHO "**Start of Signant Health Api Test**"
PAUSE

:: To execute all feature files with default url
:: behave --no-capture .\Features\

:: To execute all feature files with default url and tags
:: behave --no-capture --tags=@all .\Features\
:: Available tags are 'user_registration', 'user_login', 'update_user' and 'all'

:: To execute all feature files with custom url from command line
behave --no-capture --tags=@all .\Features\ -D baseuri='http://localhost:8080'

ECHO "**End of Signant Health Api Test**"
PAUSE