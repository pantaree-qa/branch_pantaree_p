*** Keywords ***
Set global timeout
    SeleniumLibrary.Set selenium timeout    ${global.timeout}

Set test language
    [Arguments]     ${test_language}
    Set suite variable      ${language}     ${test_language}         

Open bitazza website
    [Arguments]     ${bitizza_url}=${bitazza_web_uat.bitazza_url}  ${browser}=${bitazza_web_uat.web_browser}
    SeleniumLibrary.Open browser   ${bitizza_url}  ${browser}
    SeleniumLibrary.Maximize browser window

Click when element is ready
    [Arguments]     ${locator}      ${timeout}=30s
    SeleniumLibrary.Wait until element is visible   ${locator}      ${timeout}
    SeleniumLibrary.Click element   ${locator}

Capture screen when test failed
    Run keyword if test failed          SeleniumLibrary.Capture page screenshot