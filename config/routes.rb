Rails.application.routes.draw do
  root to: "sessions#new", constraints: -> (request) { request.session[:user_id].blank?  }

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :bookings do
    get :expired, on: :collection
  end
  resources :residents
  resources :townhouse_areas

  get 'pages/:page' => 'pages#show'
end
