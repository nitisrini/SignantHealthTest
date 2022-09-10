@ECHO OFF
ECHO "**Start of Signant Health Api Test**"
PAUSE

:: To execute all feature files with default url
behave --no-capture .\Features\

:: To execute all feature files with custom url from command line
:: behave --no-capture .\Features\ -D baseuri='http://localhost:8080'

ECHO "**End of Signant Health Api Test**"
PAUSE