require 'rails_helper'

describe "delete a business route", :type => :request do

  before do
    post '/businesses', params: {:name => 'test_restaurant', :location => 'maui', :phone => 555, :description => "a great business!" }
    @business_id = JSON.parse(response.body)["id"]
    delete "/businesses/#{@business_id}"
  end

  it 'deletes the business' do
    expect(JSON.parse(response.body)['message']).to eq('Business removed successfully!')
  end
end
