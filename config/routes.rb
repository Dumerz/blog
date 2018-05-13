Rails.application.routes.draw do
  devise_for :models
  root 'welcome#index'

  resources :articles do
    resources :comments
  end

end