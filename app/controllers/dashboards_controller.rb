class DashboardsController < ApplicationController
  def index
    @learning_modules = Learningmodule.all
  end

  def show
    @learning_module = Learningmodule.find(params[:id])
  end
end
