class UsersController < ApplicationController

  before_action :authorized

  def index
    render json: User.all, each_sealizer: UserSerializer, root: false
  end

end
