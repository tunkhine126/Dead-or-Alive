# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({username: "Kesha", password: "password", img_ur: "https://pbs.twimg.com/profile_images/714265217727901696/d8qm1F9d_400x400.jpg" zombie: false})

q1 = Question.create({value: "What makes a person sexy?"})
q2 = Question.create({value: "Would you run a 5k marathon?"})
q3 = Question.create({value: "Are you hungry? If so, for what?"})
q4 = Question.create({value: "How is your relationship with your mom?"})

a1 = Answer.create({value: "their brain", type: "zombie", question: q1})
a2 = Answer.create({value: "their face", type: "human", question: q1})
a3 = Answer.create({value: "their personality", type: "human", question: q1})
a4 = Answer.create({value: "their body", type: "human", question: q1})

a5 = Answer.create({value: "Who me?! I'm way too slow!", type: "zombie", question: q2})
a6 = Answer.create({value: "I'm training for one right now!", type: "human", question: q2})
a7 = Answer.create({value: "I would love to but I don't have the time!", type: "human", question: q2})
a8 = Answer.create({value: "I hate running!", type: "human", question: q2})

a9 = Answer.create({value: "Lately, I just want meat. like any kind of flesh at all will work!", type: "zombie", question: q3})
a10 = Answer.create({value: "Honestly, I've been craving junk food lately", type: "human", question: q3})
a11 = Answer.create({value: "I've been vegan for a month now. I really want a f***ing hamburger.", type: "human", question: q3})
a12 = Answer.create({value: "Ice Cream and french fries!", type: "human", question: q3})


a13 = Answer.create({value: "I hate her. We're just so different now. I've been waiting for my chance to tear her apart.", type: "zombie", question: q4})
a14 = Answer.create({value: "She ruined my childhood. I don't talk to her anymore", type: "human", question: q4})
a15 = Answer.create({value: "My mom is my best friend!", type: "human", question: q4})
a16 = Answer.create({value: "I hate her. We're just so different now. She just sits and waits for any chance to tear me apart", type: "human", question: q4})
