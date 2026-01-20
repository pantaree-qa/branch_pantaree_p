*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    String
Library    Collections
Resource    ${CURDIR}/../keyword/common.robot
Resource    ${CURDIR}/../keyword/page/homepage_page.robot
Resource    ${CURDIR}/../keyword/page/market_page.robot
Resource    ${CURDIR}/../keyword/feature/market_feature.robot
Resource    ${CURDIR}/locator/homepage_locator.robot
Resource    ${CURDIR}/locator/market_locator.robot
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/test_data/test_data.yaml
Variables    ${CURDIR}/language/homepage_language.yaml
Variables    ${CURDIR}/language/market_language.yaml