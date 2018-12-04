require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload('./models/*')

get '/play/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]
  game = Game.new(choice1, choice2)
  @result = game.play()
  erb( :result )
end

get '/' do
  erb(:home)
end

get '/rules' do
  erb(:rules)
end
