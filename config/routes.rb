Rails.application.routes.draw do
  get 'bank_details/new'
  get 'bank_details/create'
  devise_for :admins
  devise_for :sponsors

  resources :sponsors do
    resources :bank_details
  end

  root to: "sponsors#feed"
end
