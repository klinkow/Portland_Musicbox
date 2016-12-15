require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/' do
  erb :index
end

get '/:login' do
  @form = params["login"]
  erb :entry_form
end

get '/:user/new' do
  @form = params["user"]
  erb :entry_form
end

get '/:artist/new' do
  @form = params["user"]
  erb :entry_form
end

post "/user/new" do
  fname = params["fname"]
  lname = params["lname"]
  street = params["street"]
  city = params["city"]
  state = params["state"]
  zip = params["zip"]
  username = params["user_login"]
  pword = params["user_pword"]
  pwordV = params["pword_verify"]
  if pword == pwordV
    @user = User.new(fname: fname, lname: lname, street: street, city: city, state: state, zip: zip, username: username, password: pword)
    if @user.save
      erb :user_dashboard
    end
  else
    erb :error
  end
end
