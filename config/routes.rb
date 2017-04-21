Rails.application.routes.draw do
  get("/flexible/square/:the_number",{:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:the_number",{:controller => "calculations", :action => "flex_square_root"})

#Two below are for the form page
  get("/square/new",{:controller => "calculations", :action => "square_form"})
  get("/square/results",{:controller => "calculations", :action => "square"})

end
