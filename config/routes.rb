Rails.application.routes.draw do
  get("/flexible/square/:the_number",{:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:the_number",{:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:the_number1/:the_number2/:the_number3",{:controller => "calculations", :action => "flex_payment"})

  #Two below are for the Square form page
  get("/square/new",{:controller => "calculations", :action => "square_form"})
  get("/square/results",{:controller => "calculations", :action => "square"})

  #Two below are for the Square Root form page
  get("/square_root/new",{:controller => "calculations", :action => "square_root_form"})
  get("/square_root/results",{:controller => "calculations", :action => "square_root"})

  #Two below are for the Payment form page
  get("/payment/new",{:controller => "calculations", :action => "payment_form"})
  get("/payment/results",{:controller => "calculations", :action => "payment"})

  #Two below are for the Word Count form page
  get("/word_count/new",{:controller => "calculations", :action => "word_count_form"})
  get("/word_count/results",{:controller => "calculations", :action => "word_count"})

  #Two below are for the Random form page
  get("/random/new",{:controller => "calculations", :action => "random_form"})
  get("/random/results",{:controller => "calculations", :action => "random"})

end
