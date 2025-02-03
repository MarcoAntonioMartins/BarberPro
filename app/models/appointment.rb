class Appointment < ApplicationRecord
  belongs_to :service
  
  validates :name, presence: true
  validates :phone, presence: true
  validates :date, presence: true
  validates :time, presence: true
end
