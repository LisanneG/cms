Rails.application.routes.draw do
  get 'welcome/index'
  resources :locations do
  	resources :questions
  end
  root 'welcome#index'
end
