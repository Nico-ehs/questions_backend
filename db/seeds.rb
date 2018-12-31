# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Question.delete_all
Answer.delete_all

User.create(name: "user 1")
User.create(name: "user 2")

Question.create(text:'2 + 2', user_id: 1)
Question.create(text:'US Captial', user_id: 1)

Answer.create(question_id: 1, text:"?", user_id: 1)
Answer.create(question_id: 1, text:"4", user_id: 2)
Answer.create(question_id: 2, text:"?", user_id: 1)
Answer.create(question_id: 2, text:"DC", user_id: 2)
