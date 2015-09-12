Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: "registrations" }

  root "home#index"

  get "about", to: "home#about"
  get "news", to: "home#news"
  get "cart", to: "home#cart"

  get "admin/dashboard", to: "admin#dashboard"

  resources :dishes, only: [:index, :show]
  resources :destinations, only: [:index, :show]
end
