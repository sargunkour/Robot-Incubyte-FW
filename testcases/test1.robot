*** Settings ***
Resource    ../Keywords/keywords1.robot

*** Test Cases ***
Verify User Should Be Able To Create An Account On Luma
    Open Browser Custom    ${URL}    ${BROWSER}
    Create An Account On Luma    Sargun    Kour    11Test1@gmail.com    Sargun@123    Sargun@123

    #Validate Login Success
    Wait Until Element Is Visible    ${Welcome_Sargun}    timeout=15s