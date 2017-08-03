Rails.application.routes.draw do
  root 'items#index'
  post 'items/:id/sorted_shops', to: 'items#sorted_shops'
  resources :items, :only => [:index, :show]
end
