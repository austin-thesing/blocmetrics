class AppsController < ApplicationController
before_action :set_app, except: [:index, :new, :create]
  def index
    @apps = App.all
  end

  def show
    @events = set_app.events.group_by(&:event_name)
  end

  def new
    @app = App.new
  end

  def create
    @app = current_user.apps.new(app_params)
    if @app.save
      flash[:notice] = "Your Application '#{@app.name}' has been registered"
      redirect_to apps_path
    else
      flash[:alert] = "Oops! Something went wrong while trying to register your app. Please try again."
      redirect_to new_app_path
    end
  end

  def edit
  end

  def destroy
    if @app.destroy
      flash[:notice] = "Your application was successfully removed. You can add it to your account again at anytime."
      redirect_to apps_path
    else
      flash[:alert] = "Oops. Something went wrong while trying to delete your app. Please try again!"
      redirect_to app_path(@app) #would this work?
    end
  end

private
  def set_app
    @app = App.find(params[:id])
  end

  def app_params
    params.require(:app).permit(:name, :url, :user_id)
  end
end
