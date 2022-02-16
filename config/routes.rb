Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'users/sign_up' , to: 'devise/registrations#new'
  get 'prototypes/new' , to: 'prototypes#new'
  get 'prototypes/:id' , to: 'prototypes#show'
  post 'prototypes' , to: 'prototypes#create'
  patch 'prototypes/:id' ,to: 'prototypes#update'
  get 'prototypes/:id' ,to: 'prototypes#edit'
  get 'users/:id' ,to: 'users#show'
  

root to: 'prototypes#index'

resources :users # only: [:name, :new, :create]
resources :prototypes do
  resources :comments, only: [:create,:save]
end
end
