Rails.application.routes.draw do
  root 'items#index'
  patch 'items/:id/sorted_shops', to: 'items#sorted_shops'
  get 'items/search', to: 'items#search'
  resources :items, :only => [:index, :show, :new, :create, :search]
end
