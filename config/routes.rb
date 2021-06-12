Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # See other User's profiles // (Why has to be on top?)
  resources :profiles, only: [ :index, :show ]

  # User Interests
  resource :user_interests, only: [ :new, :create ]

  # Showing all events & Booking a session
  resources :events, only: [:index] do
    resources :bookings, only: [:create, :new]
    resource :lobbies, only: [:show]
  end

  resources :matches, only: [:show]

  resources :bookings, only: [:edit, :update, :destroy, :show]

  # Creating Events
  resources :recurring_events, only: [:new, :create]
end
