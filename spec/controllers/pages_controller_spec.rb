require 'spec_helper'

describe PagesController do
  describe 'GET show' do
    [ 'intro', 'resume', '37signals'].each do |page|
      it "should render #{page}" do
        get :show, :id => page
        response.should render_template(page)
      end
    end

    describe 'layout_for_page' do
      it "use subdomain to determing layout" do
        controller.send(:layout_for_page).should == 'application'

        request.host = "37signals.example.com"
        controller.send(:layout_for_page).should == 'empty'
      end
    end
  end
end
