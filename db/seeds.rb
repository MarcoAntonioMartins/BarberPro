# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

services = [
  { name: 'Corte Tradicional', duration: '30min', price: 'R$ 35' },
  { name: 'Barba', duration: '20min', price: 'R$ 25' },
  { name: 'Corte + Barba', duration: '50min', price: 'R$ 55' },
  { name: 'Acabamento', duration: '15min', price: 'R$ 20' }
]

services.each do |service_attrs|
  Service.create!(service_attrs)
end
