*** Variables ***
&{homepage_page}        
...     markets_menu=xpath=//button[@id='dropdown-basic']//div[contains(text(), '${homepage_page_text.market_TH}')]
...     markets_dropdown=xpath=//div[contains(@class,'show dropdown')]//div[contains(@class,'HeaderNav_ItemTitle') and contains(text(), '${homepage_page_text.market_TH}')]