Buildybuild::Application.routes.draw do
  root :to => 'pages#show'
  match 'ui(/:action)', controller: 'ui'
  match 'control_panel', to: 'pages#control_panel' , as: 'control_panel'
  match 'p/:page', to: 'pages#show'
  match 'settings/edit', to: 'website_settings#edit', :as => :edit_settings
  match 'settings/update', to: 'website_settings#update_settings', :as => :update_settings

  resources :users, exclude: [:update, :delete, :show, :index]
  resources :sessions
  resources :pages
  resources :website_settings
end
