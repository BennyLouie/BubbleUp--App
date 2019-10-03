Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: 'logout'
  resources :recommendations
  resources :shop_reviews
  resources :shops, only: [:index, :show, :new, :create]
  resources :teas, only: :show
  resources :users, except: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
