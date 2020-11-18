Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  root 'posts#index'
  resources :users, only: [:index, :show, :edit, :update]
  resources :posts
end
