Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :profiles
  resources :spaceships
  resources :jobs
  resources :spaceship_jobs

end
