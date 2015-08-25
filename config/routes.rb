Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: "registrations" }

  root "home#index"

  get "about", to: "home#about"
  get "news", to: "home#news"
  get "destinations", to: "home#destinations"

  resources :menus, only: [:index]

end
