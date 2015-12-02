require 'rails_helper'

describe 'Routes' do
  context 'pages' do
    it 'should route to pages intro' do
      {get: '/'}.should route_to(id: 'intro', controller: 'high_voltage/pages', action: 'show')
    end

    it 'should route to resume' do
      {get: '/resume'}.should route_to(id: 'resume', controller: 'high_voltage/pages', action: 'show')
    end
  end
end
