from selenium import webdriver

driver = webdriver.Chrome()
"""
#chrome_options = webdriver.ChromeOptions()
ff_options = webdriver.FirefoxOptions()
driver = webdriver.Remote(
    command_executor='http://localhost:7779',
    options=ff_options)
"""
driver.get("https://the-internet.herokuapp.com/")
print(driver.title)
driver.quit()
"""
from selenium import webdriver

firefox_options = webdriver.FirefoxOptions()
driver = webdriver.Remote(
    command_executor='http://www.example.com',
    options=firefox_options
)
driver.get("http://www.google.com")
driver.quit() 
  
"""
