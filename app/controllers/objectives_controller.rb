class ObjectivesController < ApplicationController
    # before any action, our find_objective method will run
    before_action :find_objective

    def index
        project_id = params[:project_id].to_i
        objectives = Objective.where(:project_id => project_id)
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
        render json: ObjectiveSerializer.new(@objective)
    end

    def update
        find_objective 
        @objective.update(objective_params)
        render json: ObjectiveSerializer.new(@objective)
    end

    def destroy
        find_objective
        objective.destroy
    end

    private

    def objective_params 
        params.require(:objective).permit(:title, :status, :notes)
    end

    

    def find_objective
        @objective = @project.objectives.find_by(id: params[:id])
    end

end
