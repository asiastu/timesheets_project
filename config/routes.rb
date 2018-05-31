Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'timesheets', to: 'pages#timesheets'

  resources :apprentices do
    resources :placements do
      resources :timesheets do
        resources :timesheet_segments, only: [:create, :new, :edit, :update,]
        resources :expenses, only: [:show, :edit, :update, :new, :create]
        resources :invoices, only: [:index, :show]
      end
    end
  end

  resources :expenses, only: [:destroy]
  resources :timesheet_segments, only: [:destroy]

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
