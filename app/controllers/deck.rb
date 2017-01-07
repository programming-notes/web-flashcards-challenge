get '/deck/otters' do
  erb :'deck/otters'
end

get '/deck/raccoons' do
  erb :'deck/raccoons'
end

get '/deck/nighthawks' do
  @user = current_user

  @round = Round.new()
  @deck = Deck.new()
  erb :'deck/nighthawks'
end

get '/deck' do
  @deck = Deck.all
  erb :'deck/index'
end
