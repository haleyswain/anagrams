require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @results = params.fetch('original').anagrams(params.fetch('guesses'))
  erb(:output)
end
