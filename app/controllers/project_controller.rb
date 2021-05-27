class ProjectController < ApplicationController
  def index
    @project = Project.new
    @states = Project.states.keys.to_a
  end

  def dashboard
    return @project = Project.all unless params.has_key?(:s) && params[:s].present?
    @project = Project.search(params[:s]) 
  end

  def create
    @project = Project.create!(project_params)
    @project.save

  end

  def project_params
    params.require(:project).permit(:name, :description, :start, :end, :state)
  end
end
