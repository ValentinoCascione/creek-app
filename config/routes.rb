Rails.application.routes.draw do
  devise_for :users
  root to: "creeks#index"
  resources :creeks, only: [:show, :destroy, :new, :create, :update, :edit] do
    resources :bookings, only: [:create, :index]
  end
  resources :bookings, only: [:destroy]
  get '/mycreeks', to: 'creeks#mycreeks', as: 'mycreeks'
  get '/mycreeks/:id', to: 'creeks#mycreek', as: 'mycreek'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end