class WeeksController < ApplicationController

  before_action :load_week

  def index
    render json: Week.all, each_sealizer: WeekSerializer, root: false
  end

  def show
    if @week
      render json: @week, serializer: WeekSerializer
    else
      message = "No week found id: #{params[:id]}."
      render  json: { error: message }, status: :not_found
    end
  end


  private

  def load_week
    @week = Week.find_by_id(params[:id])
  end

end
