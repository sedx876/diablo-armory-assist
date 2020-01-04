class UsersController < ApplicationController


get '/signup' do
  erb :'users/signup'
end

post '/signup' do
  user = User.new(params)
  if user.save
    session[:user_id] = user.id
    redirect '/gears'
  else
    @error = "User already exists"
    erb :'/users/signup'
  end
end

get '/login' do
    erb :'users/login'
end

post '/login' do
  if params["username"].empty? || params["password"].empty?
    @error = "Please supply username and password"
    erb :'user/login'
  else
    user = User.find_by(:username => params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect '/gears'
      else
        @error = "User not found"
        erb :'users/login'
      end
  end
end

get '/logout' do
  session.clear
  redirect '/'
end


end