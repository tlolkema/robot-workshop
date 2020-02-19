*** Settings ***
Documentation    Settings
...              Import Libraries
...              Import Resource Files
...              Configure Setup & Teardown Keywords

Library         SeleniumLibrary
Resource        resources.robot
Test setup      DoSomething
Test teardown   DoSomethingElse