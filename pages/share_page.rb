require_relative '../lib/driver'

class SharePage
  def open
    @driver = Driver.new
    @driver.open('http://192.168.3.63/share/page/')
    @driver.find_name('username')
    @driver.send_keys_name('username', 'admin')
    @driver.send_keys_name('password', 'admin')
    @driver.click_xpath('//button')
    @driver.find_link_text('Completed Tasks')
  end
end