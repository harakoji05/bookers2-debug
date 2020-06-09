Rails.application.routes.draw do

  devise_for :users

  resources :books do
  	resources :post_comments, only: [:create, :destroy]
  	resources :favorites, only: [:create, :destroy]
  end

  root 'homes#top'

  get 'home/about' => 'homes#about'

  resources :users
end