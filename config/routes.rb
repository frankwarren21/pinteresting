Pinteresting::Application.routes.draw do
  devise_for :users
  devise_for :installs
  root "pages#home"
  get "about" => "pages#about"

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
