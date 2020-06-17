class ObjectivesController < ApplicationController

    def index
        objectives = Objective.all
        # should objectives be nested under projects?
        # @objectives = @project.objectives.all
        render json: ObjectiveSerializer.new(objectives)
    end

    def create
        objective = Objective.create(objective_params)
        objective.save
        render json: objective
    end

    def show
        find_objective
        binding.pry
        render json: ObjectiveSerializer.new(objective)
    end

    def update
        find_objective 
        objective.update(objective_params)
        render json: ObjectiveSerializer.new(objective)
    end

    def destroy
        find_objective
        objective.destroy
    end

    private

    def find_objective
        objective = Objective.find_by(id: params[:id])
        # or this? are objectives nested under projects?
        # @objective = @project.objectives.find_by(id: params[:id])
    end

    def objective_params 
        params.require(:objective).permit(:title, :status, :notes)
    end

end
