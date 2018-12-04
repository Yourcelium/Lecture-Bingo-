Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]

  resources :games, only: [:create, :update, :destroy]

  resource :session, only: [:create, :destroy]

  resources :builds, only: [:update]

  resources :boards, only: [:create]

  resources :squares, only: [:create]
end
