Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # Here I add the routes for the UserInterests pages
  resource :user_interests, only: [ :new, :create ]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
