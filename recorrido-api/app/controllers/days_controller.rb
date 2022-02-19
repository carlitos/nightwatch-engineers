class DaysController < ApplicationController

  def index
    render json: Day.all, each_sealizer: DaySerializer, root: false
  end

end
