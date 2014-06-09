require 'spec_helper'

describe 'Admin Test' do

  before { as :admin }

  it 'has test in the admin menu' do
    visit gaku.admin_root_path
    expect(page.has_text?('Test')).to eq true
  end

end
