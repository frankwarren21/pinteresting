Pinteresting::Application.routes.draw do
  resources :reservations
  resources :eateries
  resources :pins
  devise_for :users
  devise_for :installs
  root "pages#home"
  get "about" => "pages#about"
  get "show" => "pages#show"
  get "team" => "pages#team"

end
