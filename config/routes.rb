Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/index'
  resources :locations
  resources :questions do
    resources :answers
  end
  resources :groups do
    resources :students
  end
  root 'locations#index'
end
