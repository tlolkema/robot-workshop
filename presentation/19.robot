*** Settings ***
Library   ExampleLibrary.py   # Import Your Own Keywords

*** Keywords ***
Easily Use Your Own Keywords
   ${RESPONSE} =   Example Keyword   Argument
   Should Be Equal As Strings   ${RESPONSE}   Robot!
