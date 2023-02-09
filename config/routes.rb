Rails.application.routes.draw do
  devise_for :accounts

  resources :communities

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public#index"
end
