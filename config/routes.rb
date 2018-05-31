Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'timesheets', to: 'pages#timesheets'

  resources :apprentices do
    resources :placements, only: [:index, :show, :edit, :update, :destroy] do
      resources :timesheets do
        resources :timesheet_segments, only: [:create, :new, :edit, :update,]
        resources :expenses, only: [:show, :edit, :update, :new, :create]
        resources :invoices, only: [:index, :show]
      end
    end
  end

  resources :placements, only: [:create, :new]
  resources :expenses, only: [:destroy]
  resources :timesheet_segments, only: [:destroy]

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
