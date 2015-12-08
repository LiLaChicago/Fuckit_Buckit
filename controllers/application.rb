class ApplicationController < Sinatra::base
  require 'bundler'
  Bundler.require

ActiveRecord::Base.establish_connection(
:database => 'buckit',
:adapter => 'postgresql'
)


  enable :sessions

  set :views, File.expand_path('../../views', __FILE__)
  set :public, File.expand_path('../../public', __FILE__)

file_not_found do
  erb :file_not_found
end


def does_username_exist(username)
  user = Account.find_by(:user_name => username)
  if user
    return true
  else
    return false
  end
end

def authorization_check
  if session[:current_user] == nil
    redirect '/account/not_authorized'
  else
    return true
  end
end

end #end of class
