Buildybuild::Application.routes.draw do
  root :to => 'pages#show'
  match 'ui(/:action)', controller: 'ui'
  match 'pages/:action', controller: 'pages'
  match 'control_panel', to: 'pages#control_panel' , as: 'control_panel'

  resources :users, exclude: [:update, :delete, :show, :index]
  resources :sessions
end
