require_relative '../lib/driver'

class AdminConfPageDS
  def open
    @driver = Driver.new
    @driver.open('http://admin:admin@192.168.3.63/alfresco/s/admin')
    @driver.click_text('ONLYOFFICE Configuration')
    @driver.find_id('onlyurl')
    @driver.send_keys_id('onlyurl', 'http://192.168.3.63:8082')
    @driver.click_id('onlycert')
    @driver.click_id('postonlycfg')
    sleep(2)
    @driver.find_xpath('//span[contains(.,\'Success\')]')
  end
end