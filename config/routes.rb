Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :agency

  resources :host_validators
  resources :host_invoice_contacts

  resources :apprentices do
    resources :placements do
      resources :timesheets
    end
  end
end
