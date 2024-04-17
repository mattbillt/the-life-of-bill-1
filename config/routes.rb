Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root to: "pages#home"

  get "matches", to: "matches#index"
  get "matches/new", to: "matches#new"
  post "matches", to: "matches#create"
  get "matches/:id", to: "matches#show", as: :match

  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"



end
