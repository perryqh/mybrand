require 'rails_helper'

describe 'Routes' do
  context 'pages' do
    it 'routes to pages intro' do
      expect({get: '/'}).to route_to(id: 'intro', controller: 'high_voltage/pages', action: 'show')
    end

    it 'routes to resume' do
      expect({get: '/resume'}).to route_to(id: 'resume', controller: 'high_voltage/pages', action: 'show')
    end
  end
end
