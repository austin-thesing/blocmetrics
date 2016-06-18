class AppsController < ApplicationController
  before_action :set_app, only: [:show, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def create

  end

  def destroy
  end
private
  def app_params
    params.require(:app).permit(:name, :url)
  end
  def set_app
    @app = App.find(params[:id])
  end
end
