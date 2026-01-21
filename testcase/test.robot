*** Settings ***
Resource    ${CURDIR}/../keyword/import.robot
Suite Setup          Run Keywords        common.Set global timeout
Test Setup              common.Open bitazza website
Test Teardown           Run Keywords        common.Capture screen when test failed
...     SeleniumLibrary.Close browser

*** Test Cases ***
TC_01 Verify value of Etherium not below 30,000
    [Tags]      TC_01   coin:etherium    coin_value  lang:th  regression    env:uat
    market_feature.Go to markets
    market_feature.Check cryptocurrency coin list   ${TC_01.coin_name.coin_1}     ${TC_01.coin_name.coin_2}     ${TC_01.coin_name.coin_3}     ${TC_01.coin_name.coin_4}
    market_feature.Verify coin value in web should be greater than expected value     ${market_page.lbl_ethereum_value}   ${TC_01.expected_value.ethereum_value}


TC_02 Verify value of Etherium not below 1,000,000
    [Tags]      TC_02   coin:etherium    coin_value  lang:th  regression    env:uat     failed
    market_feature.Go to markets
    market_feature.Check cryptocurrency coin list   ${TC_02.coin_name.coin_1}     ${TC_02.coin_name.coin_2}     ${TC_02.coin_name.coin_3}     ${TC_02.coin_name.coin_4}
    market_feature.Verify coin value in web should be greater than expected value     ${market_page.lbl_ethereum_value}   ${TC_02.expected_value.ethereum_value}