Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  root 'pets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
