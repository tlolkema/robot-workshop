Robot Framework Workshop
===============

Installation
------------

- Install python3 and put it in the path.
- Download chromedriver and put it in the path: https://chromedriver.chromium.org/
- Clone the Github repository: https://github.com/tlolkema/robot-workshop/

Open the terminal and go to the location of the repository and run:
- run: python -m venv env
- activate virtual env, run:
    - source env/bin/activate (Mac / Linux)
    - env\Scripts\activate (Windows)
- pip install -r requirements.txt


> If you have both installed a python2 and python3 version create the python virtualenv with "python3 -m venv env" to enforce python3.


Running the Workshop Application
------------

Open a new terminal and go to the location of the repository:
- activate virtual env, run:
    - source env/bin/activate (Mac / Linux)
    - env\Scripts\activate (Windows)
- Navigate to the 'app' directory
- python app.py
- The app will be running on http://localhost:5000/
- Check if you can go to the workshop application, after submitting your name the application should welcome you.


Test if everything is installed correctly
------------

Open a new terminal and go to the location of the repository:
- activate virtual env, run:
    - source env/bin/activate (Mac / Linux)
    - env\Scripts\activate (Windows)
- run: robot solutions
- if the tests pass the workshop application is running and you have installed everything correctly


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

- SeleniumLibrary documentation:
    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html


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
