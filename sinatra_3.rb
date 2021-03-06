require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @user_name = params[:user_name]
  @phome = params[:phome]
  @date_time = params[:date_time]

  @title = 'Thank you!'
  @message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}."

  f = File.open './public/users.txt', 'a'
  f.write "Name: #{@user_name} Phone: #{@phone} Date and Time: #{@date_time}\n"
  f.close

  erb :message
end
