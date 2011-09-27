Mybrand::Application.routes.draw do
  resources :dashboard, :only => [:index]
  
  root :to => 'dashboard#index'
end
