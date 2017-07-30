Rails.application.routes.draw do
	resources :users, only: [:index, :show]

  get '/notify', to: 'users#notify_users'
  get '/users/:id/status/:status', to: 'users#update_status'
  get '/users/:id/location', to: 'users#update_location'
	get '/users/:id/contacts', to: 'users#contacts'
	get '/rapidio', to: 'users#rapid'

	root 'users#satori'

end
