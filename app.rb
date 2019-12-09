require_relative 'config/environment'

class App < Sinatra::Base

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end
  
  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1*@num2}"
  end

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times do
      @result += @phrase
    end
    "#{@result}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = @word1 + " " +@word2 + " " +@word3 + " " +@word4 + " " +@word5 +"."
    "#{@result}"
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
    when "add"
      @result = @number1 + @number2
    when "subtract"
      @result = @number1 - @number2
    when "multiply"
      @result = @number1 * @number2
    when "divide"
      @result = @number1.to_f / @number2.to_f
    end
    "#{@result.to_s}"
  end

end