class API::EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    registered_app = App.find_by(url: request.env['HTTP_ORIGIN'])

    if registered_app? == false
      render json: "Unregistered App", status: :unprocessable_entity
    else
      render json: @event, status: :created
    end
  end

  private
  def event_params
    params.require(:event).permit(:name)
  end
end
