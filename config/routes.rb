Rails.application.routes.draw do
  resources :articles
  GET 'articles/:id/edit(.:format)', to: 'articles#edit'
end
