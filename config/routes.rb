Rails.application.routes.draw do

  resources :install_distro_infos
  resources :troubles
  resources :people
  resources :locations
  resources :cities
  resources :states
  resources :countries
  resources :events
  resources :genders
  resources :distros
  resources :packages
  root 'page#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
