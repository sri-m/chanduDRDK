require 'selenium-webdriver'

class LoginPage
  # Locators for elements on the page
  USERNAME_INPUT = { id: 'Admin' }
  UserLoc = {name: 'q'}
  PASSWORD_INPUT = { name: "btnK1" }
  Password = {name: 'password'}
  LOGIN_BUTTON = { name: "btnK" }

  # Initialize with a driver instance
  def initialize(driver)
    @browser = driver
  end

  def url
    @browser.navigate.to 'https://www.google.com/'
  end

    # Methods for actions on the page
  def enter_search(username)
    @browser.find_element(UserLoc).send_keys(username)
  end

  def enter_password(password)
    @browser.find_element(PASSWORD_INPUT).send_keys(password)
  end

  def submit_login
    @browser.find_element(LOGIN_BUTTON).click
  end

  def login(username, password)
    @browser.find_element(@userLoc).send_keys(username)
    @browser.find_element(@password).send_keys(password)
    @browser.find_element(LOGIN_BUTTON).click
  end
end
