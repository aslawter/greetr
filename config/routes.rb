Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :greetings, only: [:create]
  
  root "dashboards#show"
  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
end
