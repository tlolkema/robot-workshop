*** Settings ***
Resource    Variables.resource
Resource    Keywords.resource

*** Test Cases ***
Test Case
  Keyword From Resource File
  Log       ${VAR_FROM_RESOURCE}