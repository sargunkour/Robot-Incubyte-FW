*** Settings ***
Resource    ../Keywords/keywords1.robot

*** Test Cases ***
Verify User Should Be Able To Create An Account On Luma
    [Documentation]    User Creating New Account
    Open Browser Custom    ${URL}    ${BROWSER}
    Create An Account On Luma    Sargun    Kour    11tTest1@gmail.com    Sargun@123    Sargun@123

    #Validate Login Success
    Wait Until Element Is Visible    ${Welcome_Sargun}    timeout=15s
    Close Browser Session

Verify User Should Be Able To SignIn Successfully
    [Documentation]    User Signing With Existing Account
    Open Browser Custom    ${URL}    ${BROWSER}
    Sign In To Luma    11Test1@gmail.com    Sargun@123

    #Validate SignIn Success
    Wait Until Element Is Visible    ${Welcome_Sargun}    timeout=15s
    Close Browser Session