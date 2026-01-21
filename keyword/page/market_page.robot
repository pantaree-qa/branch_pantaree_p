*** Keywords ***
Click markets header
    common.Click when element is ready   ${market_page.lbl_markets}

Set coin list
    [Arguments]     @{coins}
    @{CoinList}=     Create list
    FOR    ${coins}    IN    @{coins}
        Collections.Append to list      ${CoinList}     ${coins}
    END
    RETURN    @{CoinList}

Get coin value
    [Arguments]     ${coin}
    ${value}=   SeleniumLibrary.Get text   ${coin}
    RETURN  ${value}

