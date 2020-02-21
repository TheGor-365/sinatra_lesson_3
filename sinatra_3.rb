require 'sinatra'

get '/' do
  erb :index
end

get '/admin' do
  @f = File.open 'C:\Users\74955\OneDrive\Рабочий стол\Ruby youtube\sinatra_3\public\users.txt', 'r'
  erb :admin
end

post '/' do
  @user_name = params[:user_name]
  @phome = params[:phome]
  @date_time = params[:date_time]

  @login = params[:login]
  @password = params[:password]

  if @login == 'admin' && @password == 'secret'
    erb :admin
    break
  end

  @title = 'Thank you!'
  @message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}."

  @f = File.open 'C:\Users\74955\OneDrive\Рабочий стол\Ruby youtube\sinatra_3\public\users.txt', 'a'
  @f.write "Name: #{@user_name} Phone: #{@phone} Date and Time: #{@date_time}\n"

  erb :message
end
