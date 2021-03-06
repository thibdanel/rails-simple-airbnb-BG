Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :motos do
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  resources :bookings, only: [ :show, :edit, :update, :destroy ]
  patch 'booking/:id/accept', to: 'bookings#accept', as: 'accept'
  patch 'booking/:id/decline', to: 'bookings#decline', as: 'decline'
  get "profile", to: 'dashboards#profile'
end
