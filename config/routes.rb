Rails.application.routes.draw do
  devise_for :users

  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :new, :create, :edit] do
    resources :bookings, only: [:index, :new, :create, :edit]
  end
  # Defines the root path route ("/")
  # root "articles#index"

  # custom path pour avoir un path particulier pour les demandes de booking du locateur
  resources :bookings do
    get 'renter_bookings', to: 'renter_bookings'
  end
end
