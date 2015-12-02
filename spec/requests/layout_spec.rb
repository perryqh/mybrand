require 'rails_helper'

describe 'Translations' do
  describe 'GET /' do
    before(:each) do
      visit root_url
    end

    it 'displays brand icons and links' do
      page.should have_content('perry hertler')

      within(:css, 'div#branding-links') {
        page.should have_css('a[rel=twipsy]')
      }
    end

    it 'displays nav menu' do
      within(:css, 'ul') {
        page.should have_css('li')
        page.should have_content('intro')
        page.should have_content('blog')
        page.should have_content('resume')
      }
    end
  end
end
