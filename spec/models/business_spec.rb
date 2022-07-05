require 'rails_helper'

RSpec.describe Business, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }
  it { should validate_presence_of :description }
  it { should validate_numericality_of(:phone).only_integer }
end
