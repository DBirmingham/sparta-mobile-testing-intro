require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a03/Eng7/Mobile_testing/budgetwatch.apk"
    }
  }
end