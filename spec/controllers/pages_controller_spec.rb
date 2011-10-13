require 'spec_helper'

describe PagesController do
  describe 'GET show' do
    [ 'intro', 'resume' ].each do |page|
      it "should render #{page}" do
        get :show, :id => page
        response.should render_template(page)
      end
    end
  end
end
