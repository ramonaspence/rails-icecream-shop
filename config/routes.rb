Rails.application.routes.draw do
  get 'welcome/index'

  resources :ice_creams
  
  root 'welcome#index'
end
