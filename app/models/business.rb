class Business < ApplicationRecord
  # attr_reader :id
  validates :name, :description, :location, :phone, presence: true
  # scope :search_by_name
end


