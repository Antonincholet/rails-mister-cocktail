Rails.application.routes.draw do
  resources :cocktails, except: [:new, :create, :edit, :update, :destroy]
  root to: 'cocktails#index'
end
