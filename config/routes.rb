Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # See other User's profiles // why has to be on top???
  resources :profiles, only: [ :index, :show ]

  # User Interests
  resource :user_interests, only: [ :new, :create ]

   # Booking a session
  resources :users do
    resource :bookings, only: [:create, :edit, :update, :destroy, :show]
  end

  # Creating Events and Showing All Events
  resources :events do
    resources :exceptions, module: :events
  end

end
