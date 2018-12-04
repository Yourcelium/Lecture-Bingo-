# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


theme1 = Theme.create(name: 'Lecture')

square1 = Square.create(theme_id: theme1.id, text: "TA in Back Row Playing On Computer")
square2 = Square.create(theme_id: theme1.id, text: "\"Under the Hood\"")
square3 = Square.create(theme_id: theme1.id, text: "5 People Late From Break")
square4 = Square.create(theme_id: theme1.id, text: "Driving TA Misspells Something")
square5 = Square.create(theme_id: theme1.id, text: "Cell Phone Goes Off")
square6 = Square.create(theme_id: theme1.id, text: "\"Curly Boys\"")
square7 = Square.create(theme_id: theme1.id, text: "Unimaganative Variable Name/ Console Log")
square8 = Square.create(theme_id: theme1.id, text: "None Answers a Question")
square9 = Square.create(theme_id: theme1.id, text: "4th Person Goes to Bathroom")
square10 = Square.create(theme_id: theme1.id, text: "Break Goes Long")
square11 = Square.create(theme_id: theme1.id, text: "Someone Nodds Off")
square12 = Square.create(theme_id: theme1.id, text: "Josh Choi asks 3rd Question")
square13 = Square.create(theme_id: theme1.id, text: "Talk to Someone Next To You Question")
square14 = Square.create(theme_id: theme1.id, text: "Technical Difficulties")
square15 = Square.create(theme_id: theme1.id, text: "2nd GIF in Slides")
square16 = Square.create(theme_id: theme1.id, text: "Code Bug")
square17 = Square.create(theme_id: theme1.id, text: "\"Is The Text Big Enough?\"")
square18 = Square.create(theme_id: theme1.id, text: "Kahoot!")
square19 = Square.create(theme_id: theme1.id, text: "Lecturer Draws Something Awful")
square20 = Square.create(theme_id: theme1.id, text: "\"I'll Slack it Out Later\"")
square21 = Square.create(theme_id: theme1.id, text: "Slide Changes Before Anone Can Copy It")
square22 = Square.create(theme_id: theme1.id, text: "Leturer Trips Over a Wire")
square23 = Square.create(theme_id: theme1.id, text: "4th Meme in Slides")
square24 = Square.create(theme_id: theme1.id, text: "Cat Meme")
square25 = Square.create(theme_id: theme1.id, text: "\"Daddy Ronil\"")
square1 = Square.create(theme_id: theme1.id, text: "Harry Potter Reference")


game1 = Game.create(theme_id: theme1.id)

