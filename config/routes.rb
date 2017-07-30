Rails.application.routes.draw do
	root 'users#satori'
	get '/rapidio', to: 'users#rapid'
end
