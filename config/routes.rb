Rails.application.routes.draw do
  # root to: "sessions#new", constraints: -> (request) { request.session[:user_id].blank?  }
  root to: 'townhouse_areas#index'
  resources :townhouse_areas
end
