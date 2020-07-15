class ProjectsController < ApplicationController

    def index 
        # projects = Project.all
        projects = Project.where(user_id: params[:user_id]).all
        # should be more like Project.where(user_id: params[:user_id]).all
        render json: ProjectSerializer.new(projects)
    end 

    def create 
        project = Project.create(project_params)
        project.save
        render json: project
    end 

    def show
        find_project
        render json: ProjectSerializer.new(@project)
    end 

    def update 
        find_project
        @project.update(project_params)
        @project.save
        render json: TaskSerializer.new(@project)
    end 

    def destroy
        find_project
        @project.destroy
        render json: @project
    end 

    private 

    def find_project
        @project = Project.find_by(id: params[:id])
    end

    def project
        params.require(:project).permit(:title, :description, :due_date, :status, :notes,
        user_attributes: [:id])
    end

end
