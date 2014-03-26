ProjectCrowdmaps::Application.routes.draw do
  resources :locations
 devise_scope :user do
  root to: "devise/sessions#new"
end    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "locations#index", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
