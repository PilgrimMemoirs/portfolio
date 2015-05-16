require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'



get '/' do
  erb :index
end