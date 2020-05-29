class ProjectsController < ApplicationController

    def index 
        projects = Project.all 
        render json: ProjectSerializer.new(projects)
    end 

    def create 
    end 

    def show
    end 

    def update 
        project = Project.find_by(id: params[:id])
        # project.update(complete: params[:complete])
        project.save
        render json: TaskSerializer.new(project)
    end 

    def destroy
        project = Project.find_by(id: params[:id])
        project.destroy
        render json: project
    end 

end
