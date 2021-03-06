class BusinessesController < ApplicationController

  def index
    @businesses = Business.paginate(:page => params[:page], :per_page => 5)
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update(business_params)
      render status: 200, json: {
        message: "Business updated successfully!"
      }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    if @business.destroy
      render status: 200, json: {
        message: "Business removed successfully!"
      }
    end
  end

  private

  def business_params
    params.permit(:name, :description, :location, :phone, :id)
  end
end

