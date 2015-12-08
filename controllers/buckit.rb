class BuckitController < ApplicationController

  get '/'do
    authorization_check
    @user_name = session[:current_user].user_name
    @buckit = Buckit.all
    erb :buckit_home
  end
end #end of BuckitController class
