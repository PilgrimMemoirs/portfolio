require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'pony'

class Post < ActiveRecord::Base
end

get '/' do
  erb :index
end


post '/contact' do
  name = params[:name]
  mail = params[:mail]
  body = params[:body]
  Pony.mail(:to => 'hello@jamiepilgrim.com', :from => "#{mail}", :subject => "Website Inquiry from #{name}", :body => "#{body}" )

  @message = "Thanks! I'll get back to you soon!"
  erb :index
end