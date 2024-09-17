require 'selenium-webdriver'
require 'C:\Users\user\Desktop\Students\chanduSeleniumNew\features\support\pages\login.page.rb'

Given('User opens orangeHRM website') do
  login_page = LoginPage.new(@browser)
  login_page.url

  #sleep 10
  # @browser.navigate.to('https://www.globalsqa.com/demo-site/select-dropdown-menu/')
  # #url = @browser.navigate.to('https://www.globalsqa.com/demo-site/select-dropdown-menu/')
  # sleep 5
  # #expect(url.title).to eql('DropDown Menu - GlobalSQA')
end

When('User enters userName') do
  login_page = LoginPage.new(@browser)
  # login_page.url
  login_page.enter_search('Admin')
  login_page.submit_login
  sleep 10
end

# When('User enters passWord') do
#   passWord = @browser.find_element(:name => 'password')
#   passWord.send_keys('admin123')
# end

# When('User clicks LogIn button') do
#   logInBtn = @browser.find_element(:type => 'submit')
#   logInBtn.click
# end

# Then('User should see dashBoard page') do
#   pending # Write code here that turns the phrase above into concrete actions
# end
