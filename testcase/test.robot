*** Settings ***
Resource    ${CURDIR}/../resource/import.robot

*** Test Cases ***
TC_01 Verify value of Etherium not below 30,000
    common.Open bitazza website
    market_feature.Go to markets
    market_feature.Check cryptocurrency coin list
    market_feature.Verify coin value in web should be greater than provided value     ${market_page.ethereum_value_text}   ${expected_value.ethereum_value}