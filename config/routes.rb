Rails.application.routes.draw do
	resources :users, only: [:index, :show]
	resources :incidents, only: [:index]

  get '/notify', to: 'users#notify_users'
  get '/users/:id/status/:status', to: 'users#update_status'
  get '/users/:id/location', to: 'users#update_location'
	get '/users/:id/contacts', to: 'users#contacts'
	get '/rapidio', to: 'users#rapid'
	get '/incidents/:id/affected', to: 'incidents#affected'
	get '/incidents/:id/notify', to: 'incidents#notify_users'

	root 'users#satori'

end
