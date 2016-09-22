Rails.application.routes.draw do
  get 'welcome/index'
  resources :locations do
  end
  root 'welcome#index'
end
