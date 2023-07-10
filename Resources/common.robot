*** Settings ***
Library       SeleniumLibrary


*** Keywords ***

Begin Web Test
#Initilize Selenium
    #set selenium speed          .2s
    set selenium timeout        10s

    # open the browser
    open browser                ${BASE_URL}    ${BROWSER}

    # resize the browser
    #set window position         x=341   y=169
    #set window size             width=1935  height=1090


End Web Test
    close browser
