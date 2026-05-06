Rails.application.routes.draw do
  devise_for :users

  root "posts#index"

  resources :posts do
    post :react, on: :member
    resources :comments, only: [:create] 
  end
end