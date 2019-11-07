require_relative '../../spec/spec_helper'

def require_all(_dir)
  Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/**/*.rb"].each do |file|
    require file
  end
end

require_all('../../pages')

RSpec.describe 'Test Alfresco' do
  let(:admin_page) { AdminPage.new }
  let(:admin_conf_page) { AdminConfPage.new }
  let(:admin_conf_page_ds) { AdminConfPageDS.new }
  let(:share_page) { SharePage.new }

  it 'open admin page' do
    expect(admin_page.open).to eq(true)
  end

  it 'open ONLYOFFICE Configuration page' do
    expect(admin_conf_page.open).to eq(true)
  end

  it 'enter document server ip and save' do
    expect(admin_conf_page_ds.open).to eq(true)
  end

  it 'open share page' do
    expect(share_page.open).to eq(true)
  end

end