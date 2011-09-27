Buildybuild::Application.routes.draw do
  root :to => 'pages#page'
  match 'ui(/:action)', controller: 'ui'
  match 'pages/:action', controller: 'pages'

  resources :users
end
