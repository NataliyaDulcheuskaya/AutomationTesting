import time
from __builtin__ import *
from BasePage import *
from robot.libraries.BuiltIn import BuiltIn

CREATE_PROJECT_BUTTON_LOCATOR= "//button[text()='Create New Project']"
CAPTION_CREATE_PROJECT_LOCATOR = "//div[@class='Caption']"
CHECKBOX_DATA_UPLOAD_LOCATOR = "//input[@type='checkbox']"
PROJECT_NAME_INPUT_TEXT_LOCATOR = "//div[contains(text(),'Project name:')]/../..//input"
CONFIRM_CREATE_PROJECT_BUTTON_LOCATOR ="//button[text()='Create']"


def open_create_project_window():
    driver.click_button(CREATE_PROJECT_BUTTON_LOCATOR)
    driver.wait_until_element_is_visible(CAPTION_CREATE_PROJECT_LOCATOR, SELENIUM_DEFAULT_TIMEOUT)


def uncheck_upload_data():
    driver.unselect_checkbox(CHECKBOX_DATA_UPLOAD_LOCATOR)
    driver.checkbox_should_not_be_selected(CHECKBOX_DATA_UPLOAD_LOCATOR)


def input_projects_name(project_name):
    driver.input_text(PROJECT_NAME_INPUT_TEXT_LOCATOR, project_name)


def click_create_project():
    driver.click_button (CONFIRM_CREATE_PROJECT_BUTTON_LOCATOR)
    driver.wait_until_element_is_visible(CAPTION_CREATE_PROJECT_LOCATOR, SELENIUM_LONG_TIMEOUT)


def check_project_exist(rndmString):
    locator = "//a[text()='%s']" % rndmString
    locator2 = "xpath=//a[text()='%s']/../..//tr//div[contains(text(),('Data Index State:'))]//b" % rndmString
    locator3 = "xpath=// a[text() = '%s'] /../..// tr // div[contains(text(), ('Percolator Index State:'))] // b" % rndmString

    for i in range(1, 400):
        i = 0
        text = driver.get_text(locator2)
        text2 = driver.get_text(locator3)
        if text == "OK" and text2 == "OK" :
                print 'indexState1 is equals to %s and indexState2 is equals to %s' % (text, text2)
                i = 1
                break
        else:
            print 'waiting for ok'
            print 'current indexState1 is equals to %s and indexState2 is equals to %s' % (text, text2)
            time.sleep(1)
    if i != 1:
        driver.capture_page_screenshot()
        BuiltIn.fail("Failed one of the statuses: indexState1 is equals to %s and indexState2 is equals to %s" % (text, text2))

    driver.close_browser()


