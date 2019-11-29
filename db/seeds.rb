# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "1@1.com", password: "123456")
User.create(email: "1@2.com", password: "123456")
User.create(email: "1@3.com", password: "123456")
User.create(email: "1@4.com", password: "123456")

Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191126")
Check.create(user_id: "4".to_i, answer_id: "7".to_i, check_date: "20191125")
Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191124")
Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191123")
Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191122")
Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191121")
Check.create(user_id: "4".to_i, answer_id: "6".to_i, check_date: "20191120")

