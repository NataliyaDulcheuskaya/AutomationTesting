from page import LoginPage
from page import NavigatorPage
from globalConfig import PythonPropertyReader
from globalConfig import GlobalConfigMap
from utils import TestDataGen
import os

CMPADDRESS = "http://" + GlobalConfigMap.cmp_adress_host + ":" + GlobalConfigMap.cmp_adress_port + GlobalConfigMap.cmp_adress_url
print("CMPADDRESS 1 " + CMPADDRESS)
login = GlobalConfigMap.admin_login
password = GlobalConfigMap.admin_password


def login_and_check_top_logo_visible_ui():
    print("CMPADDRESS=" + CMPADDRESS + " login=" + login)
    LoginPage.login(CMPADDRESS, login, password)
    NavigatorPage.check_top_logo_image_visible()
    os.system("taskkill /F /IM firefox.exe")


def login_and_check_error_message_ui():
    rndm=TestDataGen.set_random_string()
    LoginPage.login(CMPADDRESS, rndm, password)
    LoginPage.check_error_message_presense()
    os.system("taskkill /F /IM firefox.exe")
