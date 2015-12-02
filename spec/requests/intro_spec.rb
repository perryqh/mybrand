require 'rails_helper'

describe 'intro page' do
  describe 'GET /' do
    before(:each) do
      visit root_url
    end

    it 'displays brand icons and links' do
      within(:css, 'div.header-row') {
        page.should have_content("I'm Perry")
      }
      within(:css, 'div#branding-links') {
        page.should have_css('a[rel=twipsy]')
      }
    end
  end
end
