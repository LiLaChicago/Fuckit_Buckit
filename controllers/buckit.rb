class BuckitController < ApplicationController

# enable :sessions
#routes to the home page
get '/create' do
  # # authorization_check
  # @user_name = session[:current_user].user_name
  erb :buckit_setup
end

post '/create' do
  @buckit = Buckit.new
  @buckit.buckitname = params[:buckit_name]
  @buckit.goal = params[:goal]
  @buckit.duration = params[:duration]
  @buckit.save
  @buckit


  erb :buckit_setup
end


  get '/not_authorized_for_fuckit' do
    erb :not_authorized_for_fuckit
  end

 get '/file_not_found' do
   erb :file_not_found
 end


end #end of BuckitController class
