*** Settings ***
Library   SeleniumLibrary
Library   ./WorkshopLibrary.py

*** Variables ***
${workshop_website}   http://localhost:5000
${first_name_input}   id=firstName
${last_name_input}    id=lastName
${submit_button}      id=submitButton
${output_element}     id=output            

*** Keywords ***
STARTUP
   Log To Console   Testing begins!

TEARDOWN
   Close All Browsers

I Visit The Robot Framework Workshop Website
   Open Browser   ${workshop_website}   Chrome
   Maximize Browser Window

I Input The First Name
   [Arguments]   ${first_name}
   Input Text    ${first_name_input}   ${first_name}

I Input The Last Name
   [Arguments]   ${last_name}
   Input Text    ${last_name_input}   ${last_name}

And I Click The Submit Button
   Click Element    ${submit_button}

Then The Output Element Should Contain
   [Arguments]   ${string}
   Wait Until Keyword Succeeds   3s   200ms   Element Should Contain   ${output_element}   ${string}

I Make A POST Request To /robotframework with the WorkshopLibrary
   [Arguments]         ${first_name}    ${last_name}
   ${response} =       Submit Name      ${first_name}   ${last_name}
   Set Test Variable   ${response}

The Response Should Contain
   [Arguments]      ${string}
   Should Contain   ${response}   ${string}
