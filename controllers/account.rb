class AccountController < ApplicationController

  get '/' do

    erb :home
  end


  #user registration, we want to make this be on the same page, side by side
  get '/register' do
    erb :signin
  end

#user registration post
  post '/register' do
    if does_username_exist(params[:user_name]) == true
      @taken = 'Sorry, that username already exists. '
    return erb :signin
  end
    if (params[:user_email] != '' && params[:user_name] != '' && params[:password] != '')
    user = Account.create(user_email: params[:user_email], user_name: params[:user_name], password: params[:password])#research/ask how do you add the image and color we want to assign to it?
      return {:message =>'Sorry, that username already exists. '}.to_json
    end
    if (params[:user_email] != '' && params[:user_name] != '' && params[:password] != '')
    user =  Account.create(user_email: params[:user_email], user_name: params[:user_name], password: params[:password])#research/ask how do you add the image and color we want to assign to it?
    session[:current_user] = user
    current_user = Account.find_by(user_name: session[:current_user].user_name)
    redirect '/createbuckit'
  else
    @message = "You may have no fucks to give, but please fill in all the fields!"
    erb :signin
  end
end

#user login, we want to make this be on the same page, side by side
  get '/login' do
    erb :signin
  end
#user login, we want to make this be on the same page, side by side so leave erb as :signin?
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

get '/not_authorized_for_fuckit' do
  erb :not_authorized_for_fuckit
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
