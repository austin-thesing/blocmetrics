class API::EventsController < ApplicationController
  before_action :set_access_control_headers
  skip_before_action :verify_authenticity_token

  def create
    registered_app = App.find_by(url: request.env['HTTP_ORIGIN'])

    unless registered_app
      render json: "Unregistered App", status: :unprocessable_entity
    else
      @event = registered_app.events.new(event_params)
      if @event.save
        render json: @event, status: :created
      else
        render json: {errors: @event.errors}, status: :unprocessable_entity
      end
    end

  end

  def preflight
    head 200
  end

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Origin'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Origin'] = 'Content-Type'
  end

  private
  def event_params
    params.require(:event).permit(:name)
  end
end
