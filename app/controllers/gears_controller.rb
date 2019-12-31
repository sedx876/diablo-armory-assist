class GearsController < ApplicationController

before do
  require_login
end

#CREATE
  #New
    #Make a get request '/'

get '/gears/new' do
  erb :'/gears/new'
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
    @gears = Gear.all
    erb :'gears/index'
end

#Show
  #Make a get request to '/gears/:id'
get '/gears/:id' do
    @gear = Gear.find_by(id: params[:id])
  if @gear
    erb :'gears/show'
  else
    redirect '/gears'
  end
end


#UPDATE
  #Edit
    #Make a get request to '/gears/:id/edit'

get '/gears/:id/edit' do
    @gear = Gear.find(params[:id])
    erb :'/gears/edit'
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