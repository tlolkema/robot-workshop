Robot Framework Workshop
===============

Installation
------------

- Install python3 and put it in the path.
- Download chromedriver and put it in the path. (https://chromedriver.chromium.org/)
- python -m venv env
- activate virtual env:
    - source env/bin/activate (Mac / Linux)
    - env\Scripts\activate (Windows)
- pip install -r requirements.txt


Running the Workshop Application
------------

- Navigate to the 'app' directory
- python app.py
- The app will be running on http://localhost:5000/

Workshop Files
------------

- The workshop files are located in the 'test' directory
- Some of the keywords are already present and some need to be written

Excercise 1
------------

In ``tests.robot`` there is the following testcase:

```robotframework
Use the SeleniumLibrary to fill in the form
    Given I Visit The Robot Framework Workshop Website
    When I Input The First Name   Test
    And I Input The Last Name     User
    And I Click The Submit Button
    Then The Output Element Should Contain   Test User
```

The following keyword definitions are missing:

```robotframework
    And I Input The Last Name     User
    And I Click The Submit Button
```
    
- Write these missing keyword definitions in the resource file ``resources.resource``
- Run the test to make sure the test passes


Excercise 2
------------
You can use Setup & Teardown to execute keywords before/after every testcase or testsuite.

In the settings section of ``tests.robot`` use Setup & Teardown to:
- Run the STARTUP keyword before every test
- Run the TEARDOWN keyword after the suite

- Run the tests to see the result

Excercise 3
------------
- In ``tests.robot`` uncomment the following testcase:

```robotframework
Use The WorkshopLibrary to make a POST to /robotframework
    I Make A POST Request To /robotframework with the WorkshopLibrary   Test   User
    The Response Should Contain   Test User
```

- Write the keyword definition for 
```robotframework
I Make A POST Request To /robotframework with the WorkshopLibrary
```

- This keyword takes 2 arguments:
    - firstName
    - lastName

- The keyword should use the python method defined in ``WorkshopLibrary.py``to perform a POST call with these arguments.
- The response should be saved in a ``Test Variable`` called ``${response}``

- Run the test to make sure the test passes

BONUS 1
------------
- Use Pabot to test the testcases in parrallel
- https://github.com/mkorpela/pabot

BONUS 2
------------
- Make a data driven test using a testtemplate
- https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst#data-driven-tests
