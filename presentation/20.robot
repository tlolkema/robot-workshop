*** Settings ***
Resource   resources.resource
Test Template   Test Template Keyword

*** Test Cases ***    FIRST_ARG    SECOND_ARG   THIRD_ARG   
Testcase 1            Test         User         Robot
Testcase 2            User         Robot        Test
Testcase 3            Robot        Test         User
Testcase 4            Test         Test         Test
Testcase 5            User         User         User
Testcase 6            Robot        Robot        Robot
