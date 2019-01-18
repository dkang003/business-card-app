Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'users#index'
  root 'welcome#index'
  
  resources :users 

  resources :cards

  post '/users/:user_id/cards/search' => 'cards#search', as: :cards_search
  get '/users/:user_id/cards/:id/add' => 'cards#add'

  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
end
