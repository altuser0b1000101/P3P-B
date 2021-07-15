class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end
 
  get "/city_guides" do
    CityGuide.all.to_json
  end

  get "/users" do
    User.all.to_json(include: [:newsletters, :city_guides])
  end

  post "/login" do 
   user = User.find_by(params[:email], params[:name])
     user.to_json(include: [:newsletters, :city_guides])
  end

  post "/users" do
    user = User.create(email: params[:email], name: params[:name])
    user.to_json(include: [:newsletters, :city_guides])
  end

end

