require 'spec_helper'

describe "dashboard" do
  describe "GET /" do
    before(:each) do
      visit root_url
    end

    it "displays brand icons and links" do
      within(:css, 'div.page-header') {
        page.should have_content("Introductions")
      }
      within(:css, 'div#branding-links') {
        page.should have_css("a[rel=twipsy]")
      }
      page.should have_content("I am a Developer")
      page.should have_content("Interests")
      page.should have_content("Currently")
    end
  end
end
