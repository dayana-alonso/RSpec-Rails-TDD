class TasksController < ApplicationController
	def index
		@todos = Task.where(status: :todo)
		@done = Task.where(status: :done)
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(strong_params)

		if @task.save
			redirect_to tasks_path, notice: "Successfully created task"
		else
			flash[:notice] = 'there was a problem saving task'
			render 'new'
		end
	end

	def done
		@task = Task.find(params[:id])
		@task.update_column(:status, params[:status])
		redirect_to tasks_path, notice: "Successfully marked as done"
	end

	private

	def strong_params
		params.require(:task).permit(:name, :status)		
	end
end
