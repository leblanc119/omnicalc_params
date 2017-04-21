Rails.application.routes.draw do
  get("/flexible/square/:the_number",{:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:the_number",{:controller => "calculations", :action => "flex_square_root"})
end
