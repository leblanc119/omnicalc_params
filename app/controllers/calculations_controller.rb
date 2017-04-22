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
  @squared_number = @user_number**2
  render("calculations/square.html.erb")
end

end
