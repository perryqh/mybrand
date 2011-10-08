require 'spec_helper'

describe 'Routes' do
  context "pages" do
    it "should route to pages intro" do
      {:get => '/'}.should route_to(:id => "intro", :controller => "pages", :action => "show")
    end

    it "should route to resume" do
      {:get => '/resume'}.should route_to(:id => "resume", :controller => "pages", :action => "show")
    end
  end
end
