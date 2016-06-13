from BasePage import driver
from BasePage import SELENIUM_DEFAULT_TIMEOUT

LOGIN_INPUT_TEXT_LOCATOR = "j_username"
PASSWORD_INPUT_TEXT_LOCATOR = "j_password"
SUBMIT_BUTTON_LOCATOR = "//button[@type='submit']"
ERROR_MESSAGE_LOCATOR = "//font[@color='red']"


def login(cmp_adress, login, password):
    driver.open_browser(cmp_adress)
    driver.input_text(LOGIN_INPUT_TEXT_LOCATOR, login)
    driver.input_password(PASSWORD_INPUT_TEXT_LOCATOR, password)
    driver.click_button(SUBMIT_BUTTON_LOCATOR)

def check_error_message_presense():
    driver.wait_until_element_is_visible(ERROR_MESSAGE_LOCATOR, SELENIUM_DEFAULT_TIMEOUT)

