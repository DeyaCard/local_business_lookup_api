require 'rails_helper'

describe "post a business route", :type => :request do

  before do
    post '/businesses', params: { :restaurant => 'test_restaurant', :shop => 'test_shop' }
  end

  it 'returns the restaurant name' do
    expect(JSON.parse(response.body)['restaurant']).to eq('test_restaurant')
  end

  it 'returns the shop name' do
    expect(JSON.parse(response.body)['shop']).to eq('test_shop')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end