*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Example SeleniumLibrary Test Case
  Open Browser                    chrome      http://localhost:5000
  Page Should Contain Text        Robot Framework
  Element Should Not Be Visible   xpath=//*[@name="register"]
  Input Text    id=input_username      Test Username     