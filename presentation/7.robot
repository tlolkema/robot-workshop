*** Variables ***
${LOGIN URL}    http://localhost:5000

*** Keywords ***
Go To Homepage
  Open Browser
  Navigate to    ${LOGIN URL}