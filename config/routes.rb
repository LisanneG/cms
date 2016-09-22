Rails.application.routes.draw do
  get 'welcome/index'
  resources :locations
  resources :questions
  root 'welcome#index'
end
