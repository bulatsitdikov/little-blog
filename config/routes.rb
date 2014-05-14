RailsBase::Application.routes.draw do
  resources :articles

  devise_for :users
  root to: 'dashboard#index'
end
