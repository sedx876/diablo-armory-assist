class SessionsController < ApplicationController


get '/login' do
  erb :'users/login'
end

post '/login' do
  if params["username"].empty? || params["password"].empty?
    @error = "Please supply username and password"
    erb :'user/login'
  else
    if user = User.find_by(username: params["username"], password: params["password"])
      session[:user_id] = user.id 
      redirect '/gears'
    else
      @error = "User not found"
      erb :'users/login'
    end
end
end

end