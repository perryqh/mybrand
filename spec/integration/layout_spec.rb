require 'spec_helper'

describe "Translations" do
  def set_host (host)
    host! host
    Capybara.app_host = "http://" + host
  end

  before(:each) do
    set_host "hertler-qa.herokuapp.com"
  end

  describe "GET /" do
    before(:each) do
      visit root_url
    end

    it "displays brand icons and links" do
      page.should have_content("perry hertler")

      within(:css, 'div#global-nav') {
        page.should have_css("a[rel=twipsy]")
      }
    end

    it "displays nav menu" do
      within(:css, 'ul.nav') {
        page.should have_css("li.active")
        page.should have_content("Intro")
        page.should have_content("Blog")
        page.should have_content("Resume")
      }
    end
  end
end
