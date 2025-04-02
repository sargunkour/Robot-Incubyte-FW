*** Settings ***
Resource    ../Keywords/keywords1.robot

*** Test Cases ***
Verify User Should Be Able To Create An Account On Luma
    Open Browser Custom    ${URL}    ${BROWSER}
    Create An Account On Luma
    