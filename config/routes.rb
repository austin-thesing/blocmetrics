Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do

    match '/events', to: 'events#preflight', via: [:options]

    resources :events, only: [:create]
  end

  # Apps Controller routes
  resources :apps

  # remember to restart the server after the devise install
  devise_for :users

  # Welcome Controler routes
  get 'who-is-austin' => 'welcome#developer'
  get 'about' => 'welcome#about'
  root 'welcome#index'

end
