require 'rails_helper'

describe 'Translations' do
  describe 'GET /' do
    before(:each) do
      visit root_url
    end

    it 'displays brand icons and links' do
      expect(page).to have_content('perry hertler')

      within(:css, 'div#branding-links') {
        expect(page).to have_css('a[rel=twipsy]')
      }
    end

    it 'displays nav menu' do
      within(:css, 'ul') {
        expect(page).to have_css('li')
        expect(page).to have_content('intro')
      }
    end
  end
end
