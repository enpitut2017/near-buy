Rails.application.routes.draw do
  root 'items#index'
  get 'items/new'
end
