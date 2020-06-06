class ObjectivesController < ApplicationController

    def index
        objectives = Objective.all
        render json: ObjectiveSerializer.new(objectives)
    end

    def create

    end

    def show

    end

    def update

    end

    def destroy

    end

    private

    def objective 

    end

end
