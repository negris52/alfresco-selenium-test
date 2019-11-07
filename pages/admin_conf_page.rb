require_relative '../lib/driver'

class AdminConfPage
  def open
    @driver = Driver.new
    @driver.open('http://admin:admin@192.168.3.63/alfresco/s/admin')
    @driver.click_text('ONLYOFFICE Configuration')
    @driver.find_id('onlyurl')
  end
end