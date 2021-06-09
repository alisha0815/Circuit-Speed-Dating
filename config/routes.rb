Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resource :user_interests, only: [ :new, :create ]

  resource :profile, only: [ :show, :edit, :update ]
  resources :profiles, only: [ :index ]

  resources :users do
    resource :bookings, only: [:create, :edit, :update, :destroy, :show]
  end
  
  resources :user, only: [ :update ]
end
