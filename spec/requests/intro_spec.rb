require 'rails_helper'

describe 'intro page' do
  describe 'GET /' do
    before { visit root_url }

    it 'displays brand icons and links' do
      within(:css, 'div.header-row') {
        expect(page).to have_content("I'm Perry")
      }
      within(:css, 'div#branding-links') {
        expect(page).to have_css('a[rel=twipsy]')
      }
    end
  end
end
