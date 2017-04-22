Rails.application.routes.draw do
  get("/flexible/square/:the_number",{:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:the_number",{:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:the_number1/:the_number2/:the_number3",{:controller => "calculations", :action => "flex_payment"})

#Two below are for the form page
  get("/square/new",{:controller => "calculations", :action => "square_form"})
  get("/square/results",{:controller => "calculations", :action => "square"})

end
