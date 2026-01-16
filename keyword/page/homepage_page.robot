*** Keywords ***
Click markets menu
    SeleniumLibrary.Wait until element is visible   ${homepage_page.markets_menu}     ${homepage_page_text.timeout}
    SeleniumLibrary.Click element   ${homepage_page.markets_menu}

Click markets dropdown
    SeleniumLibrary.Wait until element is visible   ${homepage_page.markets_dropdown}
    SeleniumLibrary.Click element   ${homepage_page.markets_dropdown}