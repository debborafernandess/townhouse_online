Rails.application.routes.draw do
  root to: "sessions#new", constraints: -> (request) { request.session[:user_id].blank?  }
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"  }

  resources :townhouse_areas
  resources :residents
  get 'pages/:page' => 'pages#show'
end
