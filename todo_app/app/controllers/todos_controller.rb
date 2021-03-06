class TodosController < ApplicationController
	before_action :find_todo, only: [:show, :edit, :update, :destroy, :completado]

	def index
		@todos = Todo.all
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def new
 		@todo = Todo.new
 	end

 	def create
 		@todo = Todo.new(todo_params)
 		@todo.save
 		redirect_to todos_path
 	end

 	def destroy
 		@todo = Todo.find(params[:id])
 		@todo.destroy
 		redirect_to todos_path
 	end

 	
 	def edit
 		@todo = Todo.find(params[:id])
 	end

 	def update
 		@todo = Todo.find(params[:id])
 		@todo.update(todo_params)
 		redirect_to todos_path
 	end

 	def completado
 		@todo.completed = true
    	@todo.save
    	redirect_to todos_path
 	end

 	def informes

 	end

 	private

 	def todo_params
 		params.require(:todo).permit(:description, :completed)
 	end

	def find_todo
    	@todo = Todo.find(params[:id])
  	end
end
