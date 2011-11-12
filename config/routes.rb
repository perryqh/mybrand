Mybrand::Application.routes.draw do
  resources :pages, :only => :show
  root :to => 'pages#show', :id => 'intro'
  match 'resume' => 'pages#show', :id => 'resume', :as => :resume
end
