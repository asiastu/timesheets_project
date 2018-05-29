Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :apprentices do
    resources :placements do
      resources :timesheets do
        resources :invoices, only: [:index, :show]
      end
    end
  end

end
