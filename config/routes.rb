Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get '/tutorial', to: 'landing#tutorial'
  get '/users/sign_in', to: 'home#index'
  get '/ui', to: 'landing#ui'

  resources :beta

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
