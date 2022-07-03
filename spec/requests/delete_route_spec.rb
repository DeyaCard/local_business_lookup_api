require 'rails_helper'

describe "delete a business route", :type => :request do

  before do
    delete '/businesses', params: { :restaurant => 'test_restaurant', :shop => 'test_shop' }
  end

  it 'deletes the business' do
    expect(JSON.parse(response.body)['restaurant']).to eq('test_restaurant')
  end

end