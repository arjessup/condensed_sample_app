CondensedSampleApp::Application.routes.draw do

  resources :sessions, :only => [:new, :create, :destroy]

  resources :users

  match '/signup',    :to => 'users#new'
  match '/signin',    :to => 'sessions#new'
  match '/signout',   :to => 'sessions#destroy'
  match '/contact',   :to => 'pages#contact'
  match '/about',     :to => 'pages#about'
  match '/help',      :to => 'pages#help'

  root :to => 'pages#home'

end
