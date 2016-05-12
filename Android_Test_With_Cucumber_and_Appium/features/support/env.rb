require 'rubygems'
require 'appium_lib'
require_relative 'base_page'

APP_PATH = './primero-android-1.0.0.10.1.apk'
desired_cps = {
    caps: {
        platformName: "android",
        deviceName: "HUAWEI CRR-UL00",
        appPackage: "com.primero",
        app: APP_PATH
    },
    appium_lib: {
        sauce_username: nil,
        sauce_access_key: nil
    }
}

Appium::Driver.new(desired_cps)
Appium.promote_appium_methods PrimeroAppPage

Before { $driver.start_driver }
After { $driver.driver_quit }

