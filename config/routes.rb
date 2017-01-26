Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }
	root 'articles#index'
	resources :articles
	resources :tags, only: [:show, :index]
end
