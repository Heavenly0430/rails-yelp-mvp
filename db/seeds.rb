# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

Restaurant.create(name:"Momo Chan", address:"tokyo", phone_number:123456789, category:"japanese")
Restaurant.create(name:"1990", address:"Ostkreus", phone_number:122456456, category:"chinese")
Restaurant.create(name:"Cioa", address:"Rome", phone_number:1238984456, category:"italian")
Restaurant.create(name:"Bon Bon", address:"Pais", phone_number:888456456, category:"french")
Restaurant.create(name:"Aloha", address:"Mitte", phone_number:4568984456, category:"belgian")
