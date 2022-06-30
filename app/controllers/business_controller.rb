class BusinessController < ApplicationController

  def index
    @business = {"restaurant": "Departure"}
    json_response(@business)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end

