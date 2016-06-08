Rails.application.routes.draw do

  root 'static_pages#home'
  
  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get '/account', to: 'static_pages#account', as: :account
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  
  resources :people do
    resources :interests
    resources :addresses
  end
end
