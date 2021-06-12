Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # See other User's profiles // (Why has to be on top?)
  resources :profiles, only: [ :index, :show ]

  # User Interests
  resource :user_interests, only: [ :new, :create ]

   # Booking a session || this should be nested in events
  resources :events do
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:edit, :update, :destroy, :show]

  # Creating Events
  resources :recurring_events, only: [:new, :create]

  # Showing All Events or 1x event
  #resources :events, only: [:index, :show]
end
