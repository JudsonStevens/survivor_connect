Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/', to: 'homepage#index'
  devise_for :users, defaults: { format: :json }, controllers: { sessions: 'sessions', registrations: 'registrations' }
  namespace :api do
    # post '/register_user', to: 'users#create'
    resources :users, only: [:index]
    get '/user', to: 'users#show'
  end

  get '*path', to: 'application#fallback_index_html', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
