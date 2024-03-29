Rails.application.routes.draw do
  # root "messages#index"
  root 'root#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :messages, only: [:index]
  namespace :api do
    get 'random_greeting', to: 'greetings#random'
  end
end
