
get '/user/new' do
  erb :'user/new' #show new user view
end

get '/user' do
  redirect '/'
end

post '/user' do
  #below works with properly formatted params in HTML form
  @user = User.new(params[:user]) ##={full_name, username, email, password}
  if @user.save #saves new user or returns false if unsuccessful
    redirect '/user' #redirect back to user index page
  else
    erb :'user/new' # show new user view again(potentially displaying errors)
  end
end

get '/user/login' do
  erb :'user/login'
end

post '/user/login' do
  p @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'user/login'
  end
end

get '/user/:id' do
  @user = User.find(params[:id]) #define instance variable for view
  erb :'user/show' #show single user view
end

get '/user/logout' do
  session.clear
  redirect '/user/new'
end
