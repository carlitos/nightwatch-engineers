class CompaniesController < ApplicationController

  before_action :authorized

  def index
    render json: Company.all, each_sealizer: CompanySerializer, root: false
  end

end
