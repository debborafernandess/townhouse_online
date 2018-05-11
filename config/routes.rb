Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"  }
  # root to: "sessions#new", constraints: -> (request) { request.session[:user_id].blank?  }
  root to: 'townhouse_areas#index'

  resources :townhouse_areas
  resources :residents
  get 'pages/:page' => 'pages#show'
end
