require './lib/question'

Question.create(prompt: 'Which human is ', topic: 'first_name', target: '')
Question.create(prompt: 'Which human goes to food carts?', topic: 'lunch', target: 'carts')
Question.create(prompt: 'Which human is doing', topic: 'track', target: 'c#')
Question.create(prompt: 'Which human is doing', topic: 'track', target: 'css')
Question.create(prompt: 'Which human has been to 9th floor bathroom?', topic: 'ninth_floor', target: 'yes')
Question.create(prompt: 'Which human plays Pokémon Go?', topic: 'pokemon', target: 'yes')
Question.create(prompt: 'Which human rides their bike to school?', topic: 'transportation', target: 'bike')
Question.create(prompt: 'Which human has napped or slept on the Epicodus sofas?', topic: 'sleeping', target: 'yes')
