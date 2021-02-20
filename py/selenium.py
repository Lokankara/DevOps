from selenium.webdriver.common.by import By
#driver.find_elements(By.XPATH, '//button')
#from selenium import webdriver
#driver = webdriver.Firefox()
#driver.get("https://www.facebook.com")

from selenium import webdriver
from selenium.webdriver.common.keys import Keys
user_name = "YOUR EMAILID"
password = "YOUR PASSWORD"
driver = webdriver.Firefox()
driver.get("https://www.facebook.com")
element = driver.find_element_by_id("email")
element.send_keys(user_name)
element = driver.find_element_by_id("pass")
element.send_keys(password)
element.send_keys(Keys.RETURN)
element.close()
