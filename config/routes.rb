Rails.application.routes.draw do
  root to: "sessions#new", constraints: -> (request) { request.session[:user_id].blank?  }

  # !Important for Facebook login
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :bookings do
    get :expired, on: :collection
  end

  resources :users
  resources :townhouse_areas

  get 'pages/:page' => 'pages#show'
end
