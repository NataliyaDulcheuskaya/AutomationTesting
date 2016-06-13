from Selenium2Library import Selenium2Library as sel

SELENIUM_LONG_TIMEOUT =  180
SELENIUM_DEFAULT_TIMEOUT = 90
ROBOT_LIBRARY_SCOPE = "GLOBAL"
ROBOT_LISTENER_API_VERSION = 2

driver = sel()
driver.set_selenium_implicit_wait(SELENIUM_DEFAULT_TIMEOUT)