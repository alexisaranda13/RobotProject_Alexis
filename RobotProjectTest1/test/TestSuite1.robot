*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    im test suite setup    
Suite Teardown    Log    im test suite teardown    
Test Setup    Log    im test setup    
Test Teardown    Log    im test teardown    

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke    
    Log    Hello World
    
MySecondTest
    Log    test2
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdTest
    [Tags]    example
    Log    test3
     
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation Test    
    # Press Keys    None    ENTER
    # Sleep    2
    # Close Browser      
# SampleLoginTest
    # [Documentation]    This is a simple login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    10
    # LoginKW   
    # Sleep    10  
    # Click Element    xpath://*[@class="oxd-userdropdown-img"]
    # Sleep    5     
    # #Click Element    link=Logout
    # #Click Element    driver.find_element_by_link_text("Logout").click()
    # #href="/web/index.php/auth/logout"
    # Click Link    xpath=//a[@href="/web/index.php/auth/logout"]
    # #"/web/index.php/auth/logout"              
    # Close Browser
    # Log    Test Completed 
    # Log    This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123    

*** Keywords ***
LoginKW
    Input Text    name=username    ${CREDENTIALS}[0]
    Input Text    name=password    ${LOGINDATA}[password]
    Click Button    xpath://*[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]

        