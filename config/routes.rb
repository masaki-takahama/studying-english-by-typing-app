Rails.application.routes.draw do
  devise_for :users
  get 'phrases/index'
  root to: "phrases#index"
  resources :phrases, only: :index
end


