Rails.application.routes.draw do
  root "home#index"

  namespace :api do
    namespace :v1 do
      resources :rankings, only: [:create, :index]
    end
  end
  resources :games
  resources :rankings, only: [:create, :index]
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
