Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/index'
  resources :locations
  resources :questions do
    resources :answers
  end
  root 'locations#index'
end
