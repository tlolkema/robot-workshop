*** Keywords ***
Keyword Which Sets Test Variable
   ${RESPONSE} =   Keyword With Return Value   Workshop
   Set Test Variable   ${RESPONSE}

Keyword With Return Value
  [Arguments]   ${ARG1}
  Log To Console   ${ARG1}
  [Return]   ${ARG1}

Validation Keyword
   Should Be Equal   ${RESPONSE}   Workshop
