require 'spec_helper'

describe DashboardController do
  describe "GET index" do
    it "should render index template" do
      get :index
      
      response.should be_success
      response.should render_template(:index)
    end
  end
end