Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  resources :posts do
    resources :post_comments, only: [:create, :destroy]
  end
end
