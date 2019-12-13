require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @user_name = params[:name].reverse
  "#{@user_name}"
end

get '/square/:number' do
  @result = params[:number].to_i ** 2
  "#{@result.to_s}"
end

get '/say/:number/:phrase' do
  str = ""
  @sentence = params[:phrase]
  @num = params[:number].to_i
  
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @s = params[:say]
  @w1 = params[:word1]
  @w2 = params[:word2]
  @w3 = params[:word3]
  @w4 = params[:word4]
  @w5 = params[:word5]
  "#{@s} #{@w1} #{@w2} #{@w3} #{@w4} #{@w5}"
end

end