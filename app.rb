require_relative './config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do 
    squared_num = params[:number].to_i ** 2
    squared_num.to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @e = ""
    @number.times do 
      @e += @phrase
    end
    @e
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params.values.join(" ")
    string + "."
  end

  get '/:operation/:number1/:number2' do 
   if params[:operation] == 'add'
    sum = params[:number1].to_i + params[:number2].to_i
    sum.to_s

   elsif params[:operation] == 'subtract'
    sum = params[:number1].to_i - params[:number2].to_i
    sum.to_s

   elsif params[:operation] == 'multiply'
    sum = params[:number1].to_i * params[:number2].to_i
    sum.to_s

   elsif params[:operation] == 'divide'
    sum = params[:number1].to_i / params[:number2].to_i
    sum.to_s
   end
  end
end