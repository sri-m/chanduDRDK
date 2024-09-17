#require 'selenium-cucumber'

Given('I open test page') do
  @url = "https://www.google.com"
  @browser.navigate.to(@url)
  text_field = @browser.find_element(class: 'gLFyf')
  text_field.send_keys('Selenium testing')
  clickBtn = @browser.find_element(:name => 'btnK')
  clickBtn.click
  #@browser.action.click(clickBtn)
  #scroll = @browser.find_element(id: 'footcnt')
  #@browser.scroll_to(scroll)
  #@browser.action.scroll_to(scroll).perform
  sleep 5
end
