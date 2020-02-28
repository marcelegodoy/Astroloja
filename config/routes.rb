Rails.application.routes.draw do
  get 'users/show'
  resources :services
  devise_for :users
  get 'users/:slug', to: 'users#show'
  get 'my_profile', to: 'users#my_profile'
  root to: 'services#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
