*** Variables ***
${VAR1}     Lorum
${VAR2}     ipsum
${VAR3}     ${VAR1} ${VAR2}

${INT1}     3
${INT2}     9
${INT3} =   Evaluate   ${INT1} + ${INT2}

${BOOL}     true
${BOOL2}    ${INT1} > ${INT3}