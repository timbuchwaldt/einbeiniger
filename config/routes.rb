Einbeiniger::Application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  resources :proposals do
    collection do
      get 'admin', action: :admin, as: 'admin'
    end
    member do
      post 'update_state/:p_action', action: :update_state, as: 'update_state'
    end
  end

  get "static_page/home"
  get "user" => redirect("/users/edit")

  devise_for :users

  root :to => "static_page#home"
end
