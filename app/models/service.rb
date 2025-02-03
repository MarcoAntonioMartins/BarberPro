class Service < ApplicationRecord
  has_many :appointments
  validates :name, presence: true
  validates :duration, presence: true
  validates :price, presence: true

  def name_with_price
    "#{name} - #{price}"
  end
end
