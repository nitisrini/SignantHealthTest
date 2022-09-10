Feature: Feature file for user information retreival and validation

    Background: Register new user
        Given Set header for Content-Type with application/json value
        And Set the url with Users api
        When Make POST call and retrieve response
        Then Validate status code as 201
        And Validate the value for message as Created in response
        Given Set the url with Token api
        And Set basic authentication with username and password
        When Make GET call and retrieve response
        Then Validate status code as 200
        And Validate the value for status as SUCCESS in response
        And Get token from response

    @user_login @all
    Scenario: Get personal information of user and validate
        Given Set the url with Users api
        And Update the url with path parameter username
        And Set token in header
        And Set no authentication
        When Make GET call and retrieve response
        Then Validate status code as 200
        And Validate the user value for firstname as random in response
        And Validate the user value for lastname as random in response
        And Validate the user value for phone as random in response
