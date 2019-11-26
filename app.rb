# app.rb
require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:project-name.sqlite3"

get '/' do
  @users = User.all
  erb :index
end

get '/:id' do
  @user = User.find_by(id: params[:id])
  erb :user
end

require './models/user'