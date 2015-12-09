class AccountController < ApplicationController

  get '/' do
    authorization_check
    @user_name = session[current_user].user_name
    erb :buckit_home
  end

  get '/not_authorized_for_fuckit' do
    erb :not_authorized_for_fuckit
  end

  #user registration, we want to make this be on the same page, side by side
  get'/register' do
    erb :signin
  end

  post'/register' do
    if does_username_exist(params [:user_name]) == true
      @taken = 'Sorry, that username already exists. '
      return erb :signin
    end
    if (params [:user_email] != '' && params[:user_name] != '' && params[:password] != '')
    user =  Account.create(user_email: params[:user_email], user_name: params[:user_name], password: params[:password])#research/ask how do you add the image and color we want to assign to it?
    session[:current_user] = user
    erb :buckit_setup
  else
    @message = "You maye have no fucks to give, but please fill in all the fields!"
    erb :signin
  end
end

#user login, we want to make this be on the same page, side by side
get '/login' do
  erb :signin
end

end
post '/login' do
  if (does_username_exist(params[:user_name]) == true && params[:password] != '')
    user.Account.authenticate(params[user_name], params[:password]) #authentication
    if user
      session[:current_user] = user
      erb :buckit_home
    else
      @message = "You may give no fucks but your username and password have to be correct!"
      redirect "/login/signin"
    end
end

get '/logout' do
  authorization_check
  session[:current_user] = nil
  redirect '/'
end

get '/logout' do
  authorization_check
  session[:current_user] = nil
  redirect '/'
end


end #end of AccountController
