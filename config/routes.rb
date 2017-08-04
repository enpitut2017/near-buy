Rails.application.routes.draw do
  root 'items#index'
  get 'items/json_test', to: 'items#json_test'
  patch 'items/:id/sorted_shops', to: 'items#sorted_shops'
  resources :items, :only => [:index, :show, :new, :create]
end
