require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post '/businesses', params: {:name => 'test_restaurant', :location => 'maui', :phone => 555, :description => "a great business!"}
  end

  it 'returns the restaurant name' do
    expect(JSON.parse(response.body)['name']).to eq('test_restaurant')
  end

  it 'returns the location name' do
    expect(JSON.parse(response.body)['location']).to eq('maui')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end