Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # get 'profile', to: 'profiles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:index]
  # resources :users do
  	# resources :profiles, only: [:index]
  # end
end
