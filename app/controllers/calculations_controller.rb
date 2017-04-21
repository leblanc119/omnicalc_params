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

end
