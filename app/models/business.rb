class Business < ApplicationRecord
  # attr_reader :id
  validates :name, :description, :location, :phone, presence: true

  scope :search, -> (name_parameter) { where("business I like ?", "%#{name_parameter}%#")}
end


