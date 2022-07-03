require 'rails_helper'

describe "edit a business route", type: :request do
  before do
    patch '/businesses', params: { :restaurant => 'test_restaurant', :shop => 'test_shop' }

    # WIP
  end
end






