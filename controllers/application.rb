class ApplicationController < Sinatra::base
  require 'bundler'
  Bundler.require

  enable :sessions

  set :views, File.expand_path('../../views', __FILE__)
  set :public, File.expand_path('../../public', __FILE__)
