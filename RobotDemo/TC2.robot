*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
check whether user is able to verify the page title of the searched product
    open browser    https://www.amazon.in/    chrome
    maximize browser window
    input text    id:twotabsearchtextbox    iphone
    sleep   3
    click element    id:nav-search-submit-button
    #title should be    Amazon.in : iphone
    page should contain element    //span[@class='a-truncate-cut'][normalize-space()='Stay productive with the Apple products you love.']





*** Variables ***



*** Keywords ***
