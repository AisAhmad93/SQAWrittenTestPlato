*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://en-gb.facebook.com/reg/
${BROWSER}      Chrome

*** Test Cases ***
I am access form register facebook Page
    Open Browser    ${LOGIN URL}     ${BROWSER}
    Maximize Browser Window
User Fills Out Facebook Registration Form
    Input Text                      //input[@name="firstname"]            Ais
    Input Text                      //input[@name="lastname"]            Achmad Sutrisna
    Input Text                      //input[@name="reg_email__"]            08986250074
    Input Password                  //input[@name="reg_passwd__"]  123Jakarta
    Select From List By Value       //Select[@name="birthday_day"]       22
    Select From List By Value       //Select[@name="birthday_month"]    12
    Select From List By Value       //Select[@name="birthday_year"]     1998
    Click Element                   //input[@value="2"]
    #Click Button                    //button[@type="submit"]
    Sleep           3s
    Close Browser   