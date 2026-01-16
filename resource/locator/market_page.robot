*** Variables ***
&{market_page}      
...     markets_header=xpath=//a[@id='header_market']//div[contains(text(),'${market_page_text.market_TH}')]
...     currency_header=xpath=//span[text()='${market_page_text.cryptocurrency_TH}']
...     markets_bitcoin=xpath=//td[contains(@class,'text-white')]//div[text()='${market_page_text.bitcoin_EN}']
...     markets_ethereum=xpath=//td[contains(@class,'text-white')]//div[text()='${market_page_text.ethereum_EN}']
...     markets_moodeng=xpath=//td[contains(@class,'text-white')]//div[text()='${market_page_text.moodeng_EN}']
...     markets_usd=xpath=//td[contains(@class,'text-white')]//div[text()='${market_page_text.tether_EN}']
...     ethereum_value_text=xpath=//div[text()='${market_page_text.ethereum_EN}']/../../../../td[contains(@class,'text-right') and (text()='${market_page_text.thaibaht_EN}')]