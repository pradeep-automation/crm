*** Settings ***
Documentation    This is some of the basic info about the whole suite
Library          SeleniumLibrary
Resource         ../Resources/common.robot
Resource         ../Resources/CrmApp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test
# run the script
# robot -d results tests/crm.robot

*** Variables ***
${BROWSER} =    chrome
${BASE_URL} =   https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =    admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =    Password

*** Test Cases ***
Should be able to add new Customer
    [Documentation]             This is some basic info about TEST
    [Tags]                      1006     Smoke       Contacts


    click link                   Sign In
    wait until page contains     Login

    input text                  id=email-id     ${VALID_LOGIN_EMAIL}
    input password              id=password     ${VALID_LOGIN_PASSWORD}
    click button                Submit

    wait until page contains    Our Happy Customers

    click link                  add-customer.html
    wait until page contains         Add Customer

    input text                  id=EmailAddress     pradeep.ramola@testing.com
    input text                  id=FirstName        Pradeep
    input text                  id=LastName         Ramola
    input text                  id=City             Chicago
    #select from list by value   id=StateOrRegion    Illinois
    select from list by label    state              Illinois
    select radio button         gender              male
    #select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.

    sleep                       3s
    close browser




*** Keywords ***


