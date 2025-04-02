*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Amazon login elements
${BROWSER}    chrome
${URL}    https://magento.softwaretestingboard.com/
${Create_An_Account}    //*[contains(@class,'panel header')]/descendant::*[text()="Create an Account"]
${SignIN_To_Account}    //*[contains(@class,'panel header')]/descendant::*[@class="authorization-link"]/a
${First_Name}    //*[contains(@id,'firstname')]
${Last_Name}    //*[contains(@id,'lastname')]
${Email}    //*[contains(@id,'email_address')]
${Password}    //*[contains(@class, 'field required')]/following-sibling::*[@class="field password required"]/descendant::*[contains(@title, 'Password')]
${Confirm_Password}    //*[contains(@class, 'field required')]/following-sibling::*[@class="field confirmation required"]/descendant::*[contains(@title, 'Password')]
${Create_An_Account_Button}    //*[contains(@class,'action submit primary')]/span
${Welcome_Sargun}    //*[contains(@class,'panel header')]/descendant::*[text()="Welcome, Sargun Kour!"]
${SignIn_Button}    //*[contains(@class,'action login primary')]/span
${SignIn_Email}    //*[contains(@name,'login[username]')]
${SignIn_Pswd}    //*[contains(@name,'login[password]')]


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
    [Arguments]    ${F_Name}    ${L_Name}    ${Mail}    ${Pswd}    ${C_Pswd}
    Click Element Custom    ${Create_An_Account}
    Input Text Custom    ${First_Name}    ${F_Name}
    Input Text Custom    ${Last_Name}    ${L_Name}
    Input Text Custom    ${Email}    ${Mail}
    Input Text Custom    ${Password}    ${Pswd}
    Input Text Custom    ${Confirm_Password}    ${C_Pswd}
    Click Element Custom    ${Create_An_Account_Button}

Sign In To Luma
    [Arguments]    ${Mail}    ${Pswd}
    Click Element Custom    ${SignIN_To_Account}
    Input Text Custom    ${SignIn_Email}    ${Mail}
    Input Text Custom    ${SignIn_Pswd}    ${Pswd}
    Click Element Custom    ${SignIn_Button}
