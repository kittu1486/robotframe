step1
1.create a project
2.Add dependencis
    pip install selenium
    pip install webdriver-manager
    pip install robot frame work
    pip install robotframework - seleniumlibrary
3.Add Plugins
    Intelliboot@seleniumlibrary
4.commands
cd space pacakagename
robot space firstletter tab
Step2
    if u give input we can use keyword input text
    if u check radio buttons we can use keyword click element
    select radio button
step3
    if u use single dropdown we can use the keyword "select from list by value (1997)"
    if u use singledropdown  we can use the keywors  "select from list by label (visible text)"
step4
    if u use multidropdown we can use the keyword click element
    example - xpath://li//a[text()='English']
Step5
    maximize browser window we use *** keywords ***
        sleep tab time
keywords - means replace the value in single code
Variables - repeated values
${url}      https://demo.automationtesting.in/Register.html
${browsername}    chrome
step5 - waits concept
    set selenium speed    3 seconds
    set selenium timeout   10 seconds
    set selenium implicit wait   10 seconds
    wait until page contains    some text  #5sec




*** Settings ***
Library     SeleniumLibrary




*** Variables ***
${url}      https://demo.automationtesting.in/Register.html
${browsername}    chrome

*** Keywords ***
Lauch app
    open browser    https://demo.automationtesting.in/Register.html    chrome
    maximize browser window

*** Test Cases ***
Automation RegisterPage
    Lauch app
    #open browser    ${url}   ${browsername}
    #open browser    https://demo.automationtesting.in/Register.html    chrome
    #maximize browser window
    input text    //*[@id="basicBootstrapForm"]/div[1]/div[1]/input    Kittuchowdary
    sleep   2
    input text    //*[@id="basicBootstrapForm"]/div[1]/div[2]/input    gannamani
    sleep   2
    input text    //*[@id="basicBootstrapForm"]/div[2]/div/textarea    Dommeru
    sleep   2
    input text    //*[@id="eid"]/input    kittuchowdary1486@gmail.com
    sleep   2
    input text    //*[@id="basicBootstrapForm"]/div[4]/div/input    8919152634
    sleep   2
    click element    //*[@id="basicBootstrapForm"]/div[5]/div/label[1]
    sleep   2
    click element    checkbox1
    sleep   2
    select from list by label    Skills    CSS
    sleep    5
    click element    id:msdd
    sleep   2
    click element    xpath://li//a[text()='English']
    sleep   2
    click element    xpath://li//a[text()='Dutch']
    select from list by value    id:yearbox    1933
    select from list by label    xpath://*[@id="basicBootstrapForm"]/div[11]/div[2]/select    May
    select from list by value    id:daybox    20
    sleep   2
    input text    id:firstpassword    kittu@9999
    input text    id:secondpassword    kittu@9999
    click element    id:submitbtn







