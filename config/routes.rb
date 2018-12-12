Rails.application.routes.draw do
  devise_for :admins
  devise_for :sponsors
  root to: "sponsors#index"
end
