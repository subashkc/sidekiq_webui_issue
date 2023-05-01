require 'sidekiq/pro/web'
Rails.application.routes.draw do
  resources :photos
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => '/sidekiq'
  # Defines the root path route ("/")
  root "photos#index"
end
