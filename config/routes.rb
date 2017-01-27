Rails.application.routes.draw do
  	mount Ckeditor::Engine => '/ckeditor'
	devise_for :users, :controllers => { registrations: 'registrations' }
	root 'articles#index'
	resources :articles
	resources :tags, only: [:show, :index]
end
