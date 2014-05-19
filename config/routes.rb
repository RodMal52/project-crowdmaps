ProjectCrowdmaps::Application.routes.draw do
  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  resources :locations
   devise_scope :user do
  root to: "devise/sessions#new"
end    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "locations#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
