class BuckitController < ApplicationController

# enable :sessions
#routes to the home page
  get '/' do
    erb :home
  end

  get '/not_authorized_for_fuckit' do
    erb :not_authorized_for_fuckit
  end

 get '/file_not_found' do
   erb :file_not_found
 end


end #end of BuckitController class
