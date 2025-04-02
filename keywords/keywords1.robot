*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Amazon login elements
${BROWSER}    chrome
${URL}    https://magento.softwaretestingboard.com/
${Create_An_Account}    //*[contains(@class,'panel header')]/descendant::*[text()="Create an Account"]


*** Keywords ***
Click Element Custom
    [Arguments]    ${xpath}
    Wait Until Element Is Visible    xpath=${xpath}    timeout=15s
    Click Element    ${xpath}

Input Text Custom
    [Arguments]    ${xpath}    ${text}
    Wait Until Element Is Visible    ${xpath}    timeout=15s
    Input Text    ${xpath}    ${text}

Close Browser Session
    Close Browser

Open Browser Custom
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Create An Account On Luma
    Click Element Custom    ${Create_An_Account}