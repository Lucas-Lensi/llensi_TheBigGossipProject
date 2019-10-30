Rails.application.routes.draw do
  resources :gossips do
    resources :user, only: [:show]
    resources :comment, except: [:index, :show, :new]
  end
  resources :city, only: [:show]
end
