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
Use SeleniumLibrary to:
- Fill in the form on the workshop application
- Submit the form
- Validate the welcome message
- Run the tests

Excercise 2
------------
Setup & Teardown:
- Run the STARTUP keyword before every test
- Run the TEARDOWN keyword after the suite
- Run the tests

Excercise 3
------------
Use WorkshopLibrary to:
- Make POST call to "/robotframework" with the firstName and lastName
- Validate the results
- Run the tests

BONUS 1
------------
- Use Pabot to test the testcases in parrallel
- https://github.com/mkorpela/pabot

BONUS 2
------------
- Make a data driven test using a testtemplate
- https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst#data-driven-tests
