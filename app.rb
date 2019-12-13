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
  @num.times {str += "#{@sentence}"}
  str
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do

end
end