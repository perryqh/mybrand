require 'spec_helper'

describe 'Routes' do
  context "dashboard" do
    it "should route to pages intro" do
      {:get => '/'}.should route_to(:id => "intro", :controller => "high_voltage/pages", :action => "show")
    end
  end
end
