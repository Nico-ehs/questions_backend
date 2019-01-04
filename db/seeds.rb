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

u1=User.create(name: "user 1")
u2=User.create(name: "user 2")

q1=Question.create(text:'2 + 2', user_id: u1.id)
q2=Question.create(text:'US Captial', user_id: u1.id)

Answer.create(question_id: q1.id, text:"?", user_id: u1.id)
Answer.create(question_id: q1.id, text:"4", user_id: u2.id)
Answer.create(question_id: q2.id, text:"?", user_id: u1.id)
Answer.create(question_id: q2.id, text:"DC", user_id: u2.id)
