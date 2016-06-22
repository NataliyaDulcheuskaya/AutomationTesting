from page import NavigatorPage
from page import ProjectPage
from utils import TestDataGen


def open_project_page_ui():
    NavigatorPage.open_project_page()


def create_project_ui(rndmString):
    ProjectPage.open_create_project_window()
    ProjectPage.uncheck_upload_data()
    ProjectPage.input_projects_name(rndmString)
    ProjectPage.click_create_project()


def check_created_project_ui(project_name):
    ProjectPage.check_project_exist(project_name)