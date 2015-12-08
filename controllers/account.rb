class AccountController < ApplicationController

  get'/signin' do
    erb :signin
  end

  post'/signin' do
    if does_username_exist(params [:user_name]) == true
      @taken = 'Sorry, that username already exists. '
      return erb :signin
    end
    user =  Account.create(user_email: params[:user_email], user_name: params[:user_name], password[:password], user_image: params[:image], )#research/ask how do you add the image and color we want to assign to it?
    session[:current_user] = user
    redirect '/'
  end



end #end of AccountController
