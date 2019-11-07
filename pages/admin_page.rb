require_relative '../lib/driver'

class AdminPage
  def open
    @driver = Driver.new
    @driver.open('http://admin:admin@192.168.3.63/alfresco/s/admin')
    @driver.find_link_text('ONLYOFFICE Configuration')
  end
end