Rails.application.routes.draw do
  resources :gossips, except: [:destroy]
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
end
