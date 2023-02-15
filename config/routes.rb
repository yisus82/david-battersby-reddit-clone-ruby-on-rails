Rails.application.routes.draw do
  devise_for :accounts

  get "u/:username" => "public#profile", as: :profile

  resources :communities do
    resources :posts
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public#index"
end
