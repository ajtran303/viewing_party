Rails.application.routes.draw do
  root "welcome#index"

  get "/auth/google_oauth2/callback", to: "sessions#create"

  resources :dashboard, only: :index
  resources :friendships, only: :create
  resources :discover, only: :index
  resources :movies, only: [:index, :show]
end
