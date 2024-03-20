# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

WikiPost.create!(title: 'Funny Frogs', description: 'Silly frogs from around the globe.',
                 author: 'Billy Bindler', hidden: false)
WikiPost.create!(title: 'Monkey Facts',
                 description: 'Everything you did and did not want to know about monkeys.', author: 'John Jiles', hidden: false)
WikiPost.create!(title: 'Do Spiders Dream?', description: 'You dream about them, but do they dream of you?',
                 author: 'Phil Brazil', hidden: false)
WikiPost.create!(title: 'Penguin Fantasy', description: 'Penguins, penguins everywhere.',
                 author: 'Conlon Nancarrow', hidden: false)
