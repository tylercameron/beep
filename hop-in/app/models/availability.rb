class Availability < ApplicationRecord
  has_one :owner, class_name: 'User', through: :vehicle
  belongs_to :vehicle
end
