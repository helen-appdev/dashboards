Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "forex", :action => "home"})
  get("/forex", { :controller => "forex", :action => "forexlist"})
  get("/forex/:fromc1", { :controller => "forex", :action => "convertlist"})
  get("/forex/:fromc1/:toc2", { :controller => "forex", :action => "convertaction"})
  


end
