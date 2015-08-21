Rails.application.routes.draw do

  devise_for :users

  root 'home#index'
  get 'about', to: 'home#about'
  get 'news', to: 'home#news'


end
