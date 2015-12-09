class BuckitController < ApplicationController

# enable :sessions
#routes to the home page
get '/buckitsetup' do
  erb :buckit_setup
end

post '/buckitsetup' do

  erb :buckit_setup
end
  get '/not_authorized_for_fuckit' do
    erb :not_authorized_for_fuckit
  end

 get '/file_not_found' do
   erb :file_not_found
 end


end #end of BuckitController class
