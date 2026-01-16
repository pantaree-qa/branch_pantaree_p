*** Keywords ***
Click markets header
    SeleniumLibrary.Wait until element is visible   ${market_page.markets_header}
    SeleniumLibrary.Click element   ${market_page.markets_header}

Set coin list
    @{CoinList}=     Create list     ${market_page.markets_bitcoin}      ${market_page.markets_ethereum}     ${market_page.markets_moodeng}      ${market_page.markets_usd}
    RETURN    @{CoinList}

Get coin value
    [Arguments]     ${coin}
    ${value}=   SeleniumLibrary.Get text   ${coin}
    RETURN  ${value}

