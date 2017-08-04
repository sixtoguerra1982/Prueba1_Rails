Rails.application.routes.draw do

	get 'todos/informes'
	resources :todos
	get 'todos/:id/completado', to: 'todos#completado', as:'completado'
    root 'todos#index'


end
