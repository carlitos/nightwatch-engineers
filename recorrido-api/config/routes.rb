Rails.application.routes.draw do

  resources :companies, only: [ :index ]
  resources :days, only: [ :index ]
  resources :users, only: [ :index ]
  resources :weeks, only: [ :index, :show ]

  post '/login', to: 'auth#create'
  

end
