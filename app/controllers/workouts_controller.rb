class WorkoutsController < ApplicationController

	before_action :set_workout, only: [:show, :edit, :update, :destroy]
	def index
		@workouts = Workout.all
		@workout = Workout.new
	end

	def new
		@workout = Workout.new
	end

	def create
		@workout = Workout.new(workout_params)
		if @workout.save
			redirect_to workouts_path, notice: "Successfully created the Workout"
		else
			render action: "new"
		end
	end

	def edit
		
	end

	def show
		
	end

	def destroy
		@workout.destroy
		redirect_to root_path
	end

	private

	def set_workout
		@workout = Workout.find(params[:id]) 
	end

	def workout_params
		params.require(:workout).permit(:date, :workout, :mood, :length)
	end
end
