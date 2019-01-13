Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
  resources :users do
    resources :cards
  end
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
end
