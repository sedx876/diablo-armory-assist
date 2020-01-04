class GearsController < ApplicationController

before do
  require_login
end

get '/gears/new' do
  erb :'/gears/new'
end

post '/gears' do
  gear = current_user.gears.build(params)
  if gear.save
    redirect '/gears'
  else
    @error = "To build your Build, You have to at least start with a Build Name"
    erb :'/gears/new'
end
end

get '/gears' do
  @gears = Gear.all
  erb :'gears/index'
end

get '/gears/:id' do
    @gear = Gear.find_by(id: params[:id])
  if @gear
    erb :'gears/show'
  else
    redirect '/gears'
  end
end

get '/gears/:id/edit' do
  @gear = Gear.find(params[:id])
  erb :'/gears/edit'
end

patch '/gears/:id' do
  @gear = Gear.find(params[:id])
  @gear.update(params["gear"])
  redirect "/gears/#{params[:id]}"
end

delete '/gears/:id' do
  gear = Gear.find(params[:id])
  gear.destroy
  redirect '/gears'
end

end