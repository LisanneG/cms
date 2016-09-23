Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/index'
  resources :locations
  resources :questions
  resources :answers

  root 'locations#index'
end
