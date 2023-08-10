
*** Settings ***

Library    SeleniumLibrary
Documentation
...    My First Test
...    This test will Verify Google
Resource    ../Scenarios/User.resource

*** Test Cases ***

Test User1 Capture
    Capture User1

Test User2 Capture
    Capture User2