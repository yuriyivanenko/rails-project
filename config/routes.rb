Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :installers, only: %i[new create index edit update]
  delete "/installers/:id/remove", to: "installers#remove", as: "remove_installer"
end
