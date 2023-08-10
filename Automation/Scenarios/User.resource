
*** Settings ***
Library    SeleniumLibrary
Documentation     My First Test
Resource    ../Page Object Models/User.resource
Library    ../TestData/TestData.py

*** Keywords ***
Retrieve User1 Data
    @{GetUserData1} =    Get User1 Data
    Set Global Variable    @{GetUserData1}

Retrieve User2 Data
    @{GetUserData2} =    Get User2 Data
    Set Global Variable    @{GetUserData2}
Capture User1
    Retrieve User1 Data
    Navigate To site
    Maximize Browser Window
    Sleep     5s
    Verify on UserPage
    Sleep     5s
    Search page    ${GetUserData1}[2]
    Sleep     5s
    Page Should Not Contain     ${GetUserData1}[2]
    Sleep     5s
    Click Add User
    Sleep     5s
    Input First name        ${GetUserData1}[0]
    Input Last name         ${GetUserData1}[1]
    Input User name         ${GetUserData1}[2]
    Input User Password     ${GetUserData1}[3]
    Choose Company AAA
    Select Role             ${GetUserData1}[4]
    Input Email             ${GetUserData1}[5]
    Input Phone number      ${GetUserData1}[6]
    Sleep     5s
    Click Save Button
    Sleep     5s
    Search page    ${GetUserData1}[2]
    Page Should Contain     ${GetUserData1}[2]
    Close Browser

Capture User2
    Retrieve User2 Data
    Navigate To site
    Maximize Browser Window
    Sleep     5s
    Verify on UserPage
    Sleep     5s
    Search page    ${GetUserData2}[2]
    Sleep     5s
    Page Should Not Contain     ${GetUserData2}[2]
    Sleep     5s
    Click Add User
    Sleep     5s
    Input First name        ${GetUserData2}[0]
    Input Last name         ${GetUserData2}[1]
    Input User name         ${GetUserData2}[2]
    Input User Password     ${GetUserData2}[3]
    Choose Company AAA
    Select Role             ${GetUserData2}[4]
    Input Email             ${GetUserData2}[5]
    Input Phone number      ${GetUserData2}[6]
    Sleep     5s
    Click Save Button
    Sleep     5s
    Search page    ${GetUserData2}[2]
    Page Should Contain     ${GetUserData2}[2]
    Close Browser


