require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get ('/reversename/:name') {
    @name = params[:name].reverse
  }

  get ('/square/:number') {
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  }

  get ('/say/:number/:phrase') {
    @number = params[:number].to_i
    @phrase = params[:phrase]
    variable = ""

   @number.times do
     variable += @phrase
   end

    variable
  
  }

  get ('/say/:word1/:word2/:word3/:word4/:word5') {
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  }

  get ('/:operation/:number1/:number2'){
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{@number1 + @number2}"

    elsif @operation == "subtract"
      "#{@number1 - @number2}"

    elsif @operation == "multiply"
      "#{@number1 * @number2}"

    elsif @operation == "divide"
      "#{@number1 / @number2}"

    else
      "Please use a valid operation"
    end

  }


end