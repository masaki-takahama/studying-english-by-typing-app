Rails.application.routes.draw do
  get 'phrases/index'
  root to: "phrases#index"
end


