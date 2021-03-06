Rails.application.routes.draw do
  resources :short_urls
  root 'pages#home'
  get 'pages/home'
  get 'pages/short_url_not_found'
  get 'users/auth_token'
  get 'users/generate_auth_token'
  scope ":url" do
    get '', to: 'short_urls#redirect_to_actual_url'
  end

  namespace :api do
    namespace :v1 do
      resources :short_urls, only: [:create]
    end
  end

  devise_for :users
end
