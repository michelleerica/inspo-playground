# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
a1 = Author.create name:"Eleanor Roosevelt"
a2 = Author.create name:"Amy Poehler"
a3 = Author.create name:"Shonda Rhimes"
a4 = Author.create name:"Elizabeth Gilbert"
a5 = Author.create name:"Ron Swanson"

Quote.destroy_all
q1 = Quote.create contents: "Nobody can make you feel inferior without your permission."
q2 = Quote.create contents: "You gain strength, courage, and confidence by every experience in which you really stop to look fear in the face. You must do the thing which you think you cannot do."
q3 = Quote.create contents: "It is not fair to ask of others what you are not willing to do yourself."
q4 = Quote.create contents: "We all create the person we become by our choices as we go through life. In a real sense, by the time we are adults, we are the sum total of the choices we have made."
q5 = Quote.create contents: "The future belongs to those who believe in the beauty of their dreams."
q6 = Quote.create contents: "I say to the young: 'Do not stop thinking of life as an adventure. You have no security unless you can live bravely, excitingly, imaginatively.'"
q7 = Quote.create contents: "Do the things that interest you and do them with all your heart. Don't be concerned about whether people are watching you or criticizing you. The chances are that they aren't paying attention to you."
q8 = Quote.create contents: "I want to be around people that do things. I don’t want to be around people anymore that judge or talk about what people do. I want to be around people that dream and support and do things."
q9 = Quote.create contents: "That is the motto women should constantly repeat over and over again. Good for her! Not for me."
q10 = Quote.create contents: "The only way we will survive is by being kind. The only way we can get by in this world is through the help we receive from others. No one can do it alone, no matter how great the machines are"
q11 = Quote.create contents: "People are their most beautiful when they are laughing, crying, dancing, playing, telling the truth, and being chased in a fun way."
q12 = Quote.create contents: "Saying 'yes' doesn’t mean I don’t know how to say no, and saying 'please' doesn’t mean I am waiting for permission"
q13 = Quote.create contents: "Great people do things before they're ready. They do things before they know they can do it. Doing what you're afraid of, getting out of your comfort zone, taking risks like that- that's what life is. You might be really good. You might find out something about yourself that's really special and if you're not good, who cares? You tried something. Now you know something about yourself"
q14 = Quote.create contents: "You have to care about your work but not about the result. You have to care about how good you are and how good you feel, but not about how good people think you are or how good people think you look."
q15 = Quote.create contents: "Decide what your currency is early. Let go of what you will never have. People who do this are happier and sexier"
q16 = Quote.create contents: "You have to be where you are to get where you need to go"
q17 = Quote.create contents: "I am not lucky. You know what I am? I am smart, I am talented, I take advantage of the opportunities that come my way and I work really, really hard. Don’t call me lucky. Call me a badass."
q18 = Quote.create contents: "Happiness comes from living as you need to, as you want to. As your inner voice tells you to. Happiness comes from being who you actually are instead of who you think you are supposed to be."
q19 = Quote.create contents: "Don’t let what he wants eclipse what you need. He is very dreamy,” she says. “But he is not the sun. You are."
q20= Quote.create contents: "Dreams are lovely. But they are just dreams. Fleeting, ephemeral. Pretty. But dreams do not come true just because you dream them. It’s hard work that makes things happen. It’s hard work that creates change."
q21 = Quote.create contents: "Her toolbox is full. She has learned to not let go of the pieces of herself that she needs in order to be what someone else wants. She’s learned not to compromise. She’s learned not to settle. She’s learned, as difficult as it is, how to be her own sun."
q22 = Quote.create contents: "Who you are today . . . that’s who you are. Be brave. Be amazing. Be worthy. And every single time you get the chance? Stand up in front of people. Let them see you. Speak. Be heard. Go ahead and have the dry mouth. Let your heart beat so, so fast. Watch everything move in slow motion. So what. You what? You pass out, you die, you poop? No. (And this is really the only lesson you’ll ever need to know.)"
q23 = Quote.create contents: "If you want crappy things to stop happening to you, then stop accepting crap and demand something more"
q24 = Quote.create contents: "If I don't poke my head out of my shell and show people who I am, all anyone will ever think I am is my shell."
q24 = Quote.create contents: "You just have to keep moving forward. You just have to keep doing something, seizing the next opportunity, staying open to trying something new. It doesn’t have to fit your vision of the perfect job or the perfect life. Perfect is boring, and dreams are not real. Just . . . DO."
q25 = Quote.create contents: "You can measure your worth by your dedication to your path, not by your successes or failures."
q26 = Quote.create contents: "Done is better than good."
q27 = Quote.create contents: "Own your disappointment, acknowledge it for what it is, and move on"
q28 = Quote.create contents: "What do you love doing so much that the words failure and success essentially become irrelevant?"
q29 = Quote.create contents: "Live a life that is driven more strongly by curiosity than by fear."
q30 = Quote.create contents: "Never half ass two things. Whole ass one thing"

# Associations
a1.quotes << q1 << q2 << q3 << q4 << q5 << q6 << q7
a2.quotes << q8 << q9 << q10 << q11 << q12 << q13 << q14 << q15 << q16
a3.quotes << q17 << q18 << q19 << q20 << q21 << q22 << q23 << q24 << q25
a4.quotes << q26 << q27 << q28 << q29
a5.quotes << q30
