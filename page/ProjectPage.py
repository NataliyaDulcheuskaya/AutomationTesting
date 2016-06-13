from robot.errors import ExecutionFailed

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
    #driver.wait_until_element_is_not_visible(CAPTION_CREATE_PROJECT_LOCATOR, SELENIUM_DEFAULT_TIMEOUT)
    #driver.set_browser_implicit_wait(90)

def check_project_exist(rndmString):
    locator = "//a[text()='%s']" % rndmString
    locator2 = "xpath=//a[text()='%s']/../..//tr//div[contains(text(),('Data Index State:'))]//b" % rndmString
    locator3 = "xpath=// a[text() = '%s'] /../..// tr // div[contains(text(), ('Percolator Index State:'))] // b" % rndmString
    indexState = driver.get_webelement(locator2)
    prelocatorState = driver.get_webelement(locator3)

    #driver.wait_until_page_contains_element(locator, SELENIUM_DEFAULT_TIMEOUT)

    for i in range(1, 400):  # to iterate on the factors of the number
        indexState = driver.get_webelement(locator2)
        if indexState.text == "OK":
                print 'indexState equals %s' % indexState.text
                break  # to move to the next number, the #first FOR
        else:  # else part of the loop
            print 'waiting for ok'
            print 'indexState equals %s' % indexState.text
            driver.set_browser_implicit_wait(1)
    prelocatorState = driver.get_webelement(locator3)
    #print 'prelocatorState equals %s' % prelocatorState.text
    BuiltIn().should_be_equal_as_strings(indexState.text, "OK")
    BuiltIn().should_be_equal_as_strings(prelocatorState.text, "OK")

    #print 'indexState equals %s' % indexState.text, flush=True
    #print 'prelocatorState equals %s' % prelocatorState.text, flush=True

    # driver.set_browser_implicit_wait(90)
    #driver.wait_for_condition(1=0,SELENIUM_DEFAULT_TIMEOUT)
   # driver.wait_until_page_contains_element(locator, SELENIUM_DEFAULT_TIMEOUT)
    #try:
     #   driver.wait_until_element_contains(locator2, expectedResult, SELENIUM_DEFAULT_TIMEOUT)
    #except ExecutionFailed as err:
     #   raise err



