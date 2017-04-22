class CalculationsController < ApplicationController

  def flex_square
    # params = {"the_number"=>"17"}
    @user_number = params["the_number"].to_f
    @squared_number = @user_number**2
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    # params = {"the_number"=>"17"}
    @user_number = params["the_number"].to_f
    @square_root_number = @user_number**(1/2.0)
    render("calculations/flex_square_root.html.erb")
  end

  def flex_payment
    @apr = params["the_number1"].to_f/100.0
    @years = params["the_number2"].to_i
    @principal = params["the_number3"].to_f

    monthly_rate=(@apr/100)/12
    num_payments=@years*12
    @monthly_payment = ((monthly_rate)/(1-(1+monthly_rate)**(num_payments*-1)))*@principal

    render("calculations/flex_payment.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number = params["number_square"].to_f
    @squared_number = @user_number**2.0
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params["number_square_root"].to_f
    @square_root_number = @user_number**(1/2.0)
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    monthly_rate=(params["user_apr"].to_f/100)/12
    num_payments=params["user_years"].to_f*12
    @monthly_payment = ((monthly_rate)/(1-(1+monthly_rate)**(num_payments*-1)))*params["user_pv"].to_f
    render("calculations/payment.html.erb")
  end

  def word_count_form
    render("calculations/word_count_form.html.erb")
  end

  def word_count
    @text = params["user_text"]
    @special_word = params["special_word"]
    @sum=0

    @text2=@text.gsub(/[^a-z0-9\s]/i, "")
    @word=@special_word.gsub(/[^a-z0-9\s]/i, "")

    @text2.split.each do |special_count|
      if @word.upcase == special_count.upcase
        @sum=@sum+1
      end
    end

      @word_count = @text.split.count
      @char_count_spaces = @text.length
      @char_count_nospace = @text.gsub(" ","").length
      @occurrences = @sum

      render("calculations/word_count.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random
    max=params["user_max"].to_f
    min=params["user_min"].to_f
    @random=rand(max-min)+min
    render("calculations/random.html.erb")
  end

end
