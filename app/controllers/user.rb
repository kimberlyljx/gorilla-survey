enable :sessions

get '/users/login' do
	erb :login
end

post '/users/sign_up' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect to "/"
end

post '/users/login' do
  @user = User.authenticate(params[:user][:username], params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect to "/"
  else
    redirect to '/'
  end
end

delete '/logout' do
  session.clear
  redirect to '/'
end

get '/users/:user_id' do
	@user = User.find(params[:user_id])
	erb :user
end