#require 'selenium-webdriver'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Selenium::WebDriver.for :chrome
end


After do
  #@browser.close
  @browser.manage.timeouts.implicit_wait = 20

end
