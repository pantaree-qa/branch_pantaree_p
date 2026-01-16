*** Keywords ***
Go to markets
    homepage_page.Click markets menu
    homepage_page.Click markets dropdown
    market_page.Click markets header

Check cryptocurrency coin list
    @{CoinList}=    market_page.Set coin list
    SeleniumLibrary.Wait until element is visible   ${market_page.currency_header}
    FOR    ${coins}    IN    @{CoinList}
        SeleniumLibrary.Scroll element into view   ${coins}
        SeleniumLibrary.Wait until element is visible   ${coins}
    END

Verify coin value in web should be greater than provided value
    [Arguments]     ${coin}     ${coin_value}
    ${coin_value_in_web_text}=      market_page.Get coin value    ${coin}
    ${coin_value_in_web}=   Replace string using regexp    ${coin_value_in_web_text}    [^0-9.]      ${EMPTY}
    ${result}    Evaluate    ${coin_value_in_web} > ${coin_value}
    Should be true    ${result}