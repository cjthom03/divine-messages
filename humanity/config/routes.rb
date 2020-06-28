Rails.application.routes.draw do
  root to: 'root#index'

  resources :divine_message, only: [:create]
end
