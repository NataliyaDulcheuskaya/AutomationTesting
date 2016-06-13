from BasePage import driver
from ProjectPage import CREATE_PROJECT_BUTTON_LOCATOR
from BasePage import SELENIUM_LONG_TIMEOUT

TOP_LOGO_IMAGE_LOCATOR = "//img[@src='images/logo.gif']"


def open_project_page():
    driver.click_image(TOP_LOGO_IMAGE_LOCATOR)
    driver.wait_until_element_is_visible(CREATE_PROJECT_BUTTON_LOCATOR, SELENIUM_LONG_TIMEOUT)

def check_top_logo_image_visible():
    driver.wait_until_element_is_visible(TOP_LOGO_IMAGE_LOCATOR, SELENIUM_LONG_TIMEOUT)

