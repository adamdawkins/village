Rails.application.routes.draw do
  namespace :admins do
    resources :posts
  end
  get '/admins', to: 'admins/posts#index'

  resources :posts, only: :create
  devise_for :admins
  devise_for :sponsors

  resources :sponsors do
    resources :bank_details
  end

  resources :children

  root to: "sponsors#feed"
end
