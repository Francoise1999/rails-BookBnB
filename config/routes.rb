Rails.application.routes.draw do
  devise_for :users

  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create, :edit]
  end
  resources :bookings, only: [:index, ]
  # Defines the root path route ("/")
  # root "articles#index"

  # custom path pour avoir un path particulier pour les demandes de booking du locateur
  get 'owner_bookings', to: 'bookings#owner_bookings', as: :owner_bookings
end
