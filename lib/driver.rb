require 'selenium-webdriver'

class Driver
  attr_reader :driver

  def initialize
    Selenium::WebDriver::Chrome::Service.driver_path = "/usr/local/bin/chromedriver"
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
  end

  def open(url)
    @driver.get(url)
  end

  def find_id(id)
    is_visible?(@driver.find_element(:id, id))
  end

  def find_xpath(xpath)
    is_visible?(@driver.find_element(:xpath, xpath))
  end

  def find_name(name)
    is_visible?(@driver.find_element(:name, name))
  end

  def find_link_text(link_text)
    is_visible?(@driver.find_element(:link_text, link_text))
  end

  def is_visible?(element)
    begin
      element.displayed?
      return true
    rescue => e
      p e.message
      return false
    end
  end

  def click_text(link_text)
    el = @driver.find_element(:link_text, link_text)
    @driver.action.click(el).perform
  end

  def click_id(id)
    el = @driver.find_element(:id, id)
    @driver.action.click(el).perform
  end

  def click_xpath(xpath)
    el = @driver.find_element(:xpath, xpath)
    @driver.action.click(el).perform
  end

  def send_keys_id(id, content)
    el = @driver.find_element(:id, id)
    el.clear
    el.send_keys(content)
  end

  def send_keys_name(name, content)
    el = @driver.find_element(:name, name)
    el.clear
    el.send_keys(content)
  end

  def clear_field(id)
    el = @driver.find_element(:id, id)
    el.clear
  end

end