Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :installers, only: %i[new create index edit update destroy]
  resources :transactions, only: %i[new create ]
end
