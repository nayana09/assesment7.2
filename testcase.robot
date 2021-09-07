*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Observe user able to open the browser 
    Given User Launch browser for flipkart
    User Enter the userid and password 
    User Click on searchbox and search for Electronics 
    User Click on desire device of any Electronics


*** Keywords ***
User Launch browser for flipkart
    Open Browser  https://www.flipkart.com/  chrome
    Maximize Browser window 
    
User Enter the userid and password
    input Text  ${id}  8073620593
    input Text  ${pass}  ammu8553218334
    Click Button  ${submit}

User Click on searchbox and search for Electronics 
    Click Element  ${search} 
    Input Text  ${text}  Electronics
    Click Button  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    Sleep   2s

User Click on desire device of any Electronics
    Click Element  ${item}
    Switch Window  locator=NEW
    Click Button  ${add cart}
    Sleep   2s
    Click Element  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
    Sleep   2s
    Click Element  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a/span

*** Variables ***
${id}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input
${pass}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input
${submit}=  xpath= /html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button

${search}=  xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${text}=  xpath= //*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input
${item}=  xpath= //*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/a[1]/div[1]/div/div/img
${add cart}=  xpath= //*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button