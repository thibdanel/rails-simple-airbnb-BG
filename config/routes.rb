Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :motos do
    resources :bookings, only: [ :show, :new, :create, :update, :delete ]
  end
  get "/profile", to: 'dashboards#profile'
end
