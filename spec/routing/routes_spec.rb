require 'spec_helper'

describe 'Routes' do
  context "dashboard" do
    it "should route to index" do
      {:get => '/'}.should route_to('dashboard#index')
      {:get => '/dashboard'}.should route_to('dashboard#index')
    end
  end
end
