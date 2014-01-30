class PlanningAppsController < ApplicationController

  def index
    @planning_apps = PlanningApp.all
  end

  def search
    @planning_apps = PlanningApp.search(params[:query]) # search is dusen method
    render 'index'
  end

end
