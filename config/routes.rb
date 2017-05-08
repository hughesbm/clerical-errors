Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :characters, only: [:index, :new, :create, :show] do
    resources :levels, only: [:new, :create]
  end
end
