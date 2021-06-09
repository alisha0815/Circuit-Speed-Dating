Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resource :user_interests, only: [ :new, :create ]

  resource :profile, only: [ :show, :edit ]
  resources :profiles, only: [ :index ]

  resources :user, only: [ :update ]
end
