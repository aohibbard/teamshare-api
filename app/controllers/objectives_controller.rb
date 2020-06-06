class ObjectivesController < ApplicationController

    def index
        objectives = Objective.all
        render json: ObjectiveSerializer.new(objectives)
    end

    def create
        objective = Objective.create(objective_params)
        objective.save
        render json: objective
    end

    def show

    end

    def update

    end

    def destroy

    end

    private

    def objective 
        params.require(:objective).permit(:title, :status, :notes)
    end

end
