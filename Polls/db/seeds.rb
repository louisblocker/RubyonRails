# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create( [{username: 'Louis'}, {username: 'Leah'}, {username: 'Joanna'}, {username: 'Naomi'}])
polls = Poll.create( [{title: 'Supper Planning', author_id: 2}, {title: 'TV Shows', author_id: 1}])
questions = Question.create( [ {text: 'What should we eat for lunch?', poll_id: 1}, {text: 'What should we eat for supper?', poll_id: 1}, {text: 'What should we watch this afternoon?', poll_id: 2}, {text: 'What should we watch this evening?', poll_id: 2}])
answers = AnswerChoice.create( [ {text: 'Leftovers', question_id: 1}, {text: 'PB&J', question_id: 1}, {text: 'Chicken Pot Pie', question_id: 2}, {text: 'Pizza', question_id: 2}, {text: 'Sophia the First', question_id: 3}, {text: 'Barbie', question_id: 3}, {text: 'Baseball', question_id: 4}, {text:'New Girl', question_id: 4}])
responses = Response.create([{user_id: 4, answerchoice_id: 3}, {user_id: 4, answerchoice_id: 5}, {user_id: 1, answerchoice_id: 7}, {user_id: 3, answerchoice_id: 2}, {user_id: 2, answerchoice_id: 2}, {user_id: 1, answerchoice_id: 3}])
