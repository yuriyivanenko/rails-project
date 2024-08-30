Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :installers, only: %i[index edit update]
end
