Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/delete'
  resources :cocktails, except: [:edit, :update, :destroy]
  root to: 'cocktails#index'
end
