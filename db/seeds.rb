
require './lib/question'


Question.create(prompt: 'Which person is ', topic: 'first_name', target: '')
Question.create(prompt: 'Which person goes to food carts?', topic: 'lunch', target: 'carts')
Question.create(prompt: 'Which person is doing C#?', topic: 'track', target: 'c#')
Question.create(prompt: 'Which person has been to 9th floor bathroom?', topic: 'ninth_floor', target: 'yes')
Question.create(prompt: 'Which person plays Pokémon Go?', topic: 'pokemon', target: 'yes')
Question.create(prompt: 'Which person rides their bike to school?', topic: 'transportation', target: 'bike')
Question.create(prompt: 'Which person has napped or slept on the Epicodus sofas?', topic: 'sleeping', target: 'yes')
