class GearsController < ApplicationController

#CREATE
  #New
    #Make a get request '/'

get '/gears/new' do
  erb :'gears/new'
end

  #Create
    #make a post request to '/gears'

post '/gears' do
  gear = Gear.new(params)
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
    @gear = Gear.find(params["id"])
    erb :'gears/show'
end


#UPDATE
  #Edit
    #Make a get request to '/gears/:id/edit'

  #Update
    #Make a patch request to '/gears/:id'

#DESTROY
  #Make a delete request to '/gears/:id'


end