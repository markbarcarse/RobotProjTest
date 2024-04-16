*** Settings ***
Library   SeleniumLibrary

Suite Setup

*** Test Cases ***
#First Test
#	Open Browser  https://google.com  browser=chrome
#	Set browser implicit wait    5
#	Input text      name=q      Robot Framework
#	Sleep    5
#	Close Browser
#	Log  Success!

#TestOne
#    [Tags]    testOne
#    Log    This is test one
#
#TestTwo
#    [Tags]    testTwo
#    Log    This is test two
#
#TestThree
#    [Tags]    testThree
#    Log    This is test three

TestFour
    Open browser    https://google.com      Chrome
    Set browser implicit wait    5
    Input text    name=q    Best Manga sites
    Click button    name=btnK

    @{results} =    Get webelements    //*[@id="rso"]/div

    FOR    ${element}   IN    @{results}
            ${text} =   Get text    ${element}
            Log    ${text}
    END

    Log    This is a test

    Close browser