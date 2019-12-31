class GearsController < ApplicationController

# before do
#   require_login
# end

#CREATE
  #New
    #Make a get request '/'

get '/gears/new' do
  if logged_in?
    erb :'gears/new'
  else
    redirect '/login'
  end
end

  #Create
    #make a post request to '/gears'

post '/gears' do
  gear = current_user.gears.build(params)
  if !gear.title.empty?
    gear.save
    redirect '/gears'
  else
    @error = "To build your Build, You have to at least start with a Build Name"
    erb :'/gears/new'
end
end

#READ
  #Index
  #Make a get request to '/gears'

get '/gears' do
  if logged_in?
    @gears = Gear.all
    erb :'gears/index'
  else
    redirect '/login'
  end
end

#Show
  #Make a get request to '/gears/:id'
get '/gears/:id' do
  if logged_in?
    @gear = Gear.find(params[:id])
    erb :'gears/show'
  else
    redirect '/login'
  end
end


#UPDATE
  #Edit
    #Make a get request to '/gears/:id/edit'

get '/gears/:id/edit' do
  if logged_in?
    @gear = Gear.find(params[:id])
    erb :'/gears/edit'
  else
    redirect '/login'
  end
end
  #Update
    #Make a patch request to '/gears/:id'

patch '/gears/:id' do
    @gear = Gear.find(params[:id])
    @gear.update(params["gear"])
    redirect "/gears/#{params[:id]}"
#   @gear = Gear.find(params[:id])
#   if !params["gear"]["title"].empty?
#     @gear.update(params["gear"])
#     # gear.update(params["gear"])
#      redirect "/gears/#{params[:id]}"
#   else
#     @error = "Info not Valid, Try again Please!"
#     erb :'/gears/edit'
#   end
end
#DESTROY
  #Make a delete request to '/gears/:id'
delete '/gears/:id' do
  gear = Gear.find(params[:id])
  gear.destroy
  redirect '/gears'
  end

end