require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @user_name = params[:name].reverse
  "#{@user_name}"
end

get '/square/:number' do
  @result = params[:number].to_i * 2
  "#{@result.to_s}"
end

get '/'

end