*** Settings ***
Resource   resources.resource
Test Setup   STARTUP
Suite Teardown   TEARDOWN

*** Test Cases ***
Use the SeleniumLibrary to fill in the form
    Given I Visit The Robot Framework Workshop Website
    When I Input The First Name   Test
    And I Input The Last Name     User
    And I Click The Submit Button
    Then The Output Element Should Contain   Test User

Use The WorkshopLibrary to make a POST to /robotframework
    I Make A POST Request To /robotframework with the WorkshopLibrary   Test   User
    The Response Should Contain   Test User