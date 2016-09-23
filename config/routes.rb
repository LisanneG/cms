Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/index'
  resources :locations
  resources :questions

  root 'locations#index'
end
