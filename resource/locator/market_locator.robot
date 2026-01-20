*** Variables ***
&{market_page}      
...     lbl_markets=xpath=//a[@id='header_market']//div[contains(text(),'${market_language.${language}}[market]')]
...     lbl_currency=xpath=//span[text()='${market_language.${language}}[cryptocurrency]']
...     lbl_markets_bitcoin=xpath=//td[contains(@class,'text-white')]//div[text()='${market_language.en.bitcoin}']
...     lbl_markets_ethereum=xpath=//td[contains(@class,'text-white')]//div[text()='${market_language.en.ethereum}']
...     lbl_markets_moodeng=xpath=//td[contains(@class,'text-white')]//div[text()='${market_language.en.moodeng}']
...     lbl_markets_tether=xpath=//td[contains(@class,'text-white')]//div[text()='${market_language.en.tether}']
...     lbl_ethereum_value=xpath=//tr[td//div[text()='${market_language.en.ethereum}'][1]]/td[text()='${market_language.en.thaibaht}']