Rails.application.routes.draw do
  resources :gossips do
    resources :comment, except: [:index, :show, :new]
    resources :like, only: [:create, :destroy]
  end
  resources :user, only: [:new, :create, :show]
  resources :city, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
end
