Rails.application.routes.draw do

  devise_for :users

  resources :books

  root 'homes#top'

  get 'home/about' => 'homes#about'

  resources :users
end