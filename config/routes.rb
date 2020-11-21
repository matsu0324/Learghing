Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  root 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  get '/search', to: 'search#search'
end
