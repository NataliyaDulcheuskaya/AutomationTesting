#!/usr/bin/python    
import ConfigParser
import GlobalConfigMap
from robot.libraries.BuiltIn import BuiltIn

def read_properties(env='Local'):
    print("No env specified, using Local...")
    config = ConfigParser.RawConfigParser()
    config.read("D:/test.properties")
    GlobalConfigMap.cmp_adress_host=config.get(env, 'cmp_adress.host')
    GlobalConfigMap.cmp_adress_port=config.get(env, 'cmp_adress.port')
    GlobalConfigMap.cmp_adress_url=config.get(env, 'cmp_adress.url')
    GlobalConfigMap.admin_login=config.get("General", 'admin.login')
    GlobalConfigMap.admin_password = config.get("General", 'admin.password')

    print(GlobalConfigMap.admin_login + GlobalConfigMap.admin_password)
    #BuiltIn.set_suite_variable(GlobalConfigMap)

read_properties()