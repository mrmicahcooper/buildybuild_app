Buildybuild::Application.routes.draw do
  root :to => 'pages#show'
  match 'ui(/:action)', controller: 'ui'
  match 'control_panel', to: 'pages#control_panel' , as: 'control_panel'
  match 'p/:page', to: 'pages#show'
  match 'p/:page/:sub_page', to: 'sub_pages#show'
  match 'signout', to: 'sessions#destroy', as: 'sign_out'

  resources :users, exclude: [:update, :delete, :show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :pages, exclude: [:index]

  resource :website_settings, only: [:edit, :update]


end
