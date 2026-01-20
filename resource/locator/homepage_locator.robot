*** Variables ***
&{homepage_page}        
...     lbl_markets=xpath=//button[@id='dropdown-basic']//div[contains(text(), '${homepage_language.${language}}[market]')]
...     ddl_markets=xpath=//div[contains(@class,'show dropdown')]//div[contains(@class,'HeaderNav_ItemTitle') and contains(text(), '${homepage_language.${language}}[market]')]