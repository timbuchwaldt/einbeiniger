Einbeiniger::Application.routes.draw do
  resources :proposals

  get "static_page/home"

  devise_for :users

  root :to => "static_page#home"
end
