Rails.application.routes.draw do
  devise_for :admins
  resources :categories, only: [:show]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  post '/send_message' => 'main#send_message'
  get '/contacts' => 'contacts#index'
  get '/about_us' => 'main#about_us'
  root 'main#index'
end
