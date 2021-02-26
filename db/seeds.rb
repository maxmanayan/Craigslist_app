# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Language.destroy_all
Question.destroy_all


javascript = Language.create(name: "JavaScript", about: "Language #1")

ruby = Language.create(name: "Ruby", about: "Sweet Syntactic Sugar")

java = Language.create(name: "Java", about: "Has nothing to do with Javascript")


#One language has_many questions
javascript.questions.create(text: "What es6?", answer: "Updated js version released in 2016")

ruby.questions.create(text: "What does a symbol start with?", answer: "example => :name")

java.questions.create(text: "Is java a typed language", answer: "yes")
#Another way to create


puts "Seeded #{Language.all.size} languages"
puts "Seeded #{Question.all.size} questions"