Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resource :user_interests, only: [ :new, :create ]

  resources :profiles, only: [ :index ]

end
