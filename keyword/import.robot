*** Settings ***
Library    SeleniumLibrary
Library    DebugLibrary
Library    String
Library    Collections
Resource    ${CURDIR}/common.robot
Resource    ${CURDIR}/page/homepage_page.robot
Resource    ${CURDIR}/page/market_page.robot
Resource    ${CURDIR}/feature/market_feature.robot
Resource    ${CURDIR}/../resource/locator/homepage_locator.robot
Resource    ${CURDIR}/../resource/locator/market_locator.robot
Variables    ${CURDIR}/../resource/settings/setting.yaml
Variables    ${CURDIR}/../resource/test_data/test_data.yaml
Variables    ${CURDIR}/../resource/language/homepage_language.yaml
Variables    ${CURDIR}/../resource/language/market_language.yaml