*** Keywords ***
Go to markets
    homepage_page.Click markets menu
    homepage_page.Click markets dropdown
    market_page.Click markets header

Check cryptocurrency coin list
    [Arguments]     @{coins}
    @{CoinList}=    market_page.Set coin list       @{coins}
    SeleniumLibrary.Wait until element is visible   ${market_page.lbl_currency}
    FOR    ${coins}    IN    @{CoinList}
        SeleniumLibrary.Scroll element into view   ${market_page.lbl_markets_${coins}}
        SeleniumLibrary.Wait until element is visible   ${market_page.lbl_markets_${coins}}
    END

Verify coin value in web should be greater than expected value
    [Arguments]     ${coin}     ${coin_value}
    ${coin_value_in_web_txt}=      market_page.Get coin value    ${coin}
    ${coin_value_in_web}=   String.Replace string using regexp    ${coin_value_in_web_txt}    [^0-9.]      ${EMPTY}
    ${result}    Evaluate    ${coin_value_in_web} > ${coin_value}
    Should be true    ${result}