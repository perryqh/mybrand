Mybrand::Application.routes.draw do
  resources :pages, :only => :show

  match '/' => 'pages#show', :id => '37signals', :constraints => { :subdomain => /37signals/ } 

  root :to => 'pages#show', :id => 'intro'
end
