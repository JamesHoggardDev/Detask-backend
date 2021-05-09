class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects, except: [:created_at, :updated_at]
    end
    

    def create
        new_project = Project.create!(project_params)
        render json: new_project 
    end

    def destroy
        project = Project.find(params[:id])
        project.destroy!
        render json: {}
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)

        render json: project
    end

    private

    def project_params
        params.permit(:title, :user_id, :notes)
    end

end