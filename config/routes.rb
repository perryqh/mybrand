Mybrand::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'intro'
  get '/resume' => 'high_voltage/pages#show', id: 'resume'
end
