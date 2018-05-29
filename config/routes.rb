Rails.application.routes.draw do
  get 'timesheet_segment/index'
  get 'timesheet_segment/new'
  get 'timesheet_segment/create'
  get 'timesheet_segment/edit'
  get 'timesheet_segment/update'
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
