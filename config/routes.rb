Rails.application.routes.draw do
  root 'page#index'
  devise_for :users
  scope :flisol do
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
  end

end
