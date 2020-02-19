*** Variables ***
${ITEM_LIST} =  Create List             item1   item2   item3
${ITEM1} =      ${ITEM_LIST[0]}
${ITEM2} =      ${ITEM_LIST[1]}

${ITEMS} =      Create Dictionary       id=76578   user=Test
${KEYS} =       Get Dictionary Keys     ${ITEMS}
${VALUES} =     Get Dictionary Values   ${ITEMS}
${USER_NAME} =  Get From Dictionary     ${ITEMS}   id
