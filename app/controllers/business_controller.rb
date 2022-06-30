class BusinessController < ApplicationController

  def index
    @business = {"restaurant": "Departure"}
    json_response(@business)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create(business_params)
    json_response(@business)
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def business_params
    params.permit(:restaurant, :shop)
  end
end

