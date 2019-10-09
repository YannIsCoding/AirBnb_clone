Rails.application.routes.draw do

  resources :bookings
  resources :flats
  resources :flats do
    resources :bookings, only: [:index, :new, :create]
  end
  resources :users do
    resources :bookings, only: [:index]
  end
  devise_for :users
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
