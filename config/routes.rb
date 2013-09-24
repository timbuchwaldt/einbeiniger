Einbeiniger::Application.routes.draw do
  resources :proposals do
    member do
      post 'update_state/:p_action', action: :update_state, as: 'update_state'
    end
  end

  get "static_page/home"

  devise_for :users

  root :to => "static_page#home"
end
