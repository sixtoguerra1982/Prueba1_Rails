Rails.application.routes.draw do

	get 'todos/informes'
	resources :todos
    root 'todos#index'


end
