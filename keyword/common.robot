*** Keywords ***
Open bitazza website
    SeleniumLibrary.Open browser   ${bitazza_web.bitazza_url}  ${bitazza_web.web_browser}
    SeleniumLibrary.Maximize browser window