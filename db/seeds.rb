# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Comment.destroy_all
Post.destroy_all

l1 = Location.create({name: "Atlanta"})

quiz = Quiz.create({name: "Are You a Dead or Alive?"})

user1 = User.create({username: "Kesha", password: "password", img_url: "https://pbs.twimg.com/profile_images/714265217727901696/d8qm1F9d_400x400.jpg", zombie: true, location_id: l1.id, quiz_id: quiz.id})
user2 = User.create({username: "Paula", password: "password", img_url: "your image here", zombie: true, location_id: l1.id, quiz_id: quiz.id})
user3 = User.create({username: "Tun", password: "password", img_url: "your image here", zombie: false, location_id: l1.id, quiz_id: quiz.id})


q1 = Question.create({value: "What makes a person sexy?", quiz_id: quiz.id})
a1 = Answer.create({value: "their brain", question_type: "zombie", question_id: q1.id})
a2 = Answer.create({value: "their face", question_type: "human", question_id: q1.id})
a3 = Answer.create({value: "their personality", question_type: "human", question_id: q1.id})
a4 = Answer.create({value: "their body", question_type: "human", question_id: q1.id})

q2 = Question.create({value: "Would you run a 5k marathon?", quiz_id: quiz.id})
a5 = Answer.create({value: "Who me?! I'm way too slow!", question_type: "zombie", question_id: q2.id})
a6 = Answer.create({value: "I'm training for one right now!", question_type: "human", question_id: q2.id})
a7 = Answer.create({value: "I would love to but I don't have the time!", question_type: "human", question_id: q2.id})
a8 = Answer.create({value: "I hate running!", question_type: "human", question_id: q2.id})

q3 = Question.create({value: "Are you hungry? If so, for what?", quiz_id: quiz.id})
a9 = Answer.create({value: "Lately, I just want meat. like any kind of flesh at all will work!", question_type: "zombie", question_id: q3.id})
a10 = Answer.create({value: "Honestly, I've been craving junk food lately", question_type: "human", question_id: q3.id})
a11 = Answer.create({value: "I've been vegan for a month now. I really want a f***ing hamburger.", question_type: "human", question_id: q3.id})
a12 = Answer.create({value: "Ice Cream and french fries!", question_type: "human", question_id: q3.id})

q4 = Question.create({value: "How is your relationship with your mom?", quiz_id: quiz.id})
a13 = Answer.create({value: "I hate her. We're just so different now. I've been waiting for my chance to tear her apart.", question_type: "zombie", question_id: q4.id})
a14 = Answer.create({value: "She ruined my childhood. I don't talk to her anymore", question_type: "human", question_id: q4.id})
a15 = Answer.create({value: "My mom is my best friend!", question_type: "human", question_id: q4.id})
a16 = Answer.create({value: "I hate her. We're just so different now. She just sits and waits for any chance to tear me apart", question_type: "human", question_id: q4.id})

p1 = Post.create(content: "Being a Zombie doesn't make me monster! #zombiesarepeopletoo #formervegan #Ididntmeantoeatyourbrain #itsanillness", user_id: user1.id)
# user1.posts << [Post.create(content: "Being a Zombie doesn't make me monster! #zombiesarepeopletoo #formervegan #Ididntmeantoeatyourbrain #itsanillness")]
c1 = Comment.create(content: "I wish more undeads understood this! I can't help myself! I don't WANT to hurt you, I HAVE to! #raceforthecure", post_id: p1.id, user_id: user2.id)
c2 = Comment.create(content: "Don't be ashamed to be who you are! If you like brains, you like brains! #ZOMBIEPRIDE #sorrynotsorry", post_id: p1.id, user_id: user3.id)
