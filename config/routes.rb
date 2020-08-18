Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trees, only: [:index, :show] do
    resources :rentals, only: [:new, :create]
  end

  resources :rentals, only: [:index]

  namespace :owner do
    resources :trees, only: [:index, :new, :create]
    resources :rentals, only: [:index] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
