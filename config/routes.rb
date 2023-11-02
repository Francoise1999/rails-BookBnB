Rails.application.routes.draw do
  get 'books/new_book'
  devise_for :users
  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:index, :new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"

  # custom path pour avoir un path particulier pour les demandes de booking du locateur
  resources :bookings do
    get 'renter_bookings', to: 'renter_bookings'
  end
end
