Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/', to: 'homepage#index'
  namespace :api, defaults: { format: 'json' } do
    devise_for :lawyers, controllers: { sessions: 'api/sessions', registrations: 'api/registrations' }
    post '/register_lawyer', to: 'lawyers#create'
    resources :lawyers, only: [:index]
  end

  get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
