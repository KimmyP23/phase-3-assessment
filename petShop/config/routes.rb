Rails.application.routes.draw do
  resources :pets, only: :index do
    resources :toys
  end

  get '/home', to: 'pets#index'
  root 'pets#index'
end
