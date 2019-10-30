Rails.application.routes.draw do
  resources :gossips do
    resources :user, only: [:show]
    #resources :city, only: [:show]
    resources :comment, except: [:index, :show, :new]
  end
end
