Rails.application.routes.draw do
  get 'apprentices/index'
  get 'apprentice/show'
  get 'apprentices/new'
  get 'apprentices/create'
  get 'apprentices/edit'
  get 'apprentices/update'
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
