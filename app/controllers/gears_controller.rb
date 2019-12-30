class GearsController < ApplicationController

#CREATE
  #New
    #Make a ger request '/'

  #Create
    #make a post request to '/gears'

#READ
  #Index
  #Make a get request to '/gears'

  get '/gears' do
    @gears = Gear.all
      erb :'gears/index'
  end

#Show
  #Make a get request to '/gears/:id'

#UPDATE
  #Edit
    #Make a get request to '/gears/:id/edit'

  #Update
    #Make a patch request to '/gears/:id'

#DESTROY
  #Make a delete request to '/gears/:id'


end