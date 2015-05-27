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
  # Pony.mail(:to => 'hello@jamiepilgrim.com', :via => :sendmail, :from => "#{mail}", :subject => "Website Inquiry from #{name}", :body => "#{body}" )

  Pony.mail(
      :from => params[:name],
      :to => 'jamieleepilgrim@gmail.com',
      :subject => params[:name] + " has contacted you",
      :body => params[:message],
      :port => '587',
      :via => :smtp,
      :via_options => { 
        :address              => 'smtp.gmail.com', 
        :port                 => '465', 
        :enable_starttls_auto => true, 
        :user_name            => 'jamieleepilgrim', 
        :password             => 'Ayemipape90!', 
        :authentication       => :plain, 
        :domain               => 'localhost.localdomain'
      })



  @message = "Thanks! I'll get back to you soon!"
  erb :index
end
