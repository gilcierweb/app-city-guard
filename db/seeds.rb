# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(username: nil, password: nil)

user = User.find(user)
user.add_role :admin
user.has_role? :admin

user.add_role? :manager
user.has_role? :manager

user.add_role? :employee
user.has_role? :employee