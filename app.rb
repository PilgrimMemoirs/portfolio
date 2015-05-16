require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Post < ActiveRecord::Base
end

get '/' do
  erb :index
end