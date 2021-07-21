Rails.application.routes.draw do
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
  devise_for :users
  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"
  namespace :admins do
  get "/homes/top" => "homes#top", as: "top"
  resources :items
  resources :genres
  resources :costomers
  resources :users
  end
  
  namespace :public do
    resources :items
    resources :cart_items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
