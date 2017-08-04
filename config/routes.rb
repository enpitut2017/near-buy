Rails.application.routes.draw do
  # get 'stocks/:item_id/:shop_id/edit', to: 'register_stocks#edit'
  # patch 'stocks/:item_id/:shop_id', to: 'register_stocks#update'

  root 'items#index'
  patch 'items/:id/sorted_shops', to: 'items#sorted_shops'
  resources :items, :only => [:index, :show]
end
