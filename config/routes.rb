Rails.application.routes.draw do
  get 'users/show'
  get 'services/myservices', to: 'services#my_services'
  get 'orders/myorders', to: 'orders#my_orders'

  resources :services do
    resources :reviews, only: [:new, :create]
    resources :orders, only: [:new, :create]
  end

  devise_for :users
  get 'users/:slug', to: 'users#show'
  get 'my_profile', to: 'users#my_profile'
  root to: 'services#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
