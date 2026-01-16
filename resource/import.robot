*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ${CURDIR}/../keyword/common.robot
Resource    ${CURDIR}/../keyword/page/homepage_page.robot
Resource    ${CURDIR}/../keyword/page/market_page.robot
Resource    ${CURDIR}/../keyword/feature/market_feature.robot
Resource    ${CURDIR}/locator/homepage_page.robot
Resource    ${CURDIR}/locator/market_page.robot
Variables    ${CURDIR}/test_data/test_data.yaml