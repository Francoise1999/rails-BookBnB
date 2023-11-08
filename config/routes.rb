Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  devise_for :users

  root to: "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :books, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create, :edit]
  end
  resources :bookings, only: [:index, ]
  resources :profiles, only: [:show, :edit, :update]

  # Defines the root path route ("/")
  # root "articles#index"

  # custom path pour avoir un path particulier pour les demandes de booking du locateur
  get 'owner_bookings', to: 'bookings#owner_bookings', as: :owner_bookings
end
