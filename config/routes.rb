Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  #GET '/articles/:id/edit', to: 'articles#edit'
end
