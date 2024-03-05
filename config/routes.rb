Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "Tasks#list"
  get "/detail", to: "tasks#detail"
  post "/add", to: "tasks#add"
  post "/edit", to: "tasks#edit"
  get "/list", to: "tasks#remove"
  # Defines the root path route ("/")
  # root "posts#index"
end
