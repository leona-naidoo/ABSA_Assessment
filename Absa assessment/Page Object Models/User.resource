
*** Settings ***

Library    SeleniumLibrary
Library    XML
Documentation    Page object locators and action keywords for the user page
*** Variables ***
${Site}                               https://www.way2automation.com/angularjs-protractor/webtables/  
${browser}                            chrome 
${SearchBox}                          xpath = //thead/tr[1]/td[1]/input[1]  
${AddUserButton}                      xpath = //thead/tr[2]/td[1]/button[1]    
${FirstNameField}                     name = FirstName
${LastNameField}                      name = LastName
${UserNameField}                      name = UserName
${EmailField}                         name = Email
${PhoneField}                         name = Mobilephone
${PasswordField}                      name = Password
${CompanyAAradio}                     xpath = /html/body/div[2]/div[2]/form/table/tbody/tr[5]/td[2]/label[1]/input
${CompanyBBradio}                     xpath = /html/body/div[2]/div[2]/form/table/tbody/tr[5]/td[2]/label[2]/input
${RoleList}                           xpath = /html/body/div[2]/div[2]/form/table/tbody/tr[6]/td[2]/select
${SaveButton}                         xpath = //button[contains(text(),'Save')]

*** Keywords ***

Navigate To site
    Open Browser    ${Site}  browser=${browser}
	Capture Page Screenshot   

Verify on UserPage
    Page Should Contain     Add User
	Capture Page Screenshot   

Click Add User
    Click Element    ${AddUserButton} 
	Capture Page Screenshot   

Search page
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${SearchBox}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input First name
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${FirstNameField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input Last name
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${LastNameField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input User name
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${UserNameField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input Email 
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${EmailField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input Phone number
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${PhoneField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Input User Password
    [Arguments]         ${Element_Value_Adm}
    Input Text	        ${PasswordField}       ${Element_Value_Adm}
	Capture Page Screenshot   	

Select Role
    [Arguments]         ${Element_Value_Adm}
    Select From List By Label    ${RoleList}    ${Element_Value_Adm}
	Capture Page Screenshot   	

Choose Company AAA
    Click Element    ${CompanyAAradio}  
    Capture Page Screenshot  

Choose Company BBB
    Click Element    ${CompanyBBradio}  
    Capture Page Screenshot  

Click Save Button
    Click Element    ${SaveButton} 
	Capture Page Screenshot   
