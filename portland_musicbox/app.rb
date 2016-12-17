require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/' do
  @user = User.where(current: true)
  erb :index
end

get '/:login' do
  @user = User.where(current: true)
  @form = params["login"]
  erb :entry_form
end

post '/login/user' do
  @user = User.where(username: params["login"])
  if @user[0].password == params["pword"]
    @user.update(current: true)
    erb :user_dash
  else
    redirect to("/login")
  end
end

get "/logout/:id" do
  id = params["id"].to_i
  @user = User.find(id)
  @user.update(current: false)
  redirect("/")
end

get "/user/account/:id" do
  @user = User.where(current: true)
  @artist = Artist.where(current: true)
  erb :user_dash
end

get '/:user/new' do
  @user = User.where(current: true)
  @form = params["user"]
  erb :entry_form
end


get '/:artist/new' do
  @user = User.where(current: true)
  @form = params["user"]
  erb :entry_form
end

post "/artist/new" do
  artist = params["artist_name"]
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
    @user = User.new(fname: fname, lname: lname, street: street, city: city, state: state, zip: zip, username: username, password: pword, current: false, artist: true)
    @artist = Artist.new(:name => artist)
    if @user.save & @artist.save
      @user.update(current: true)
      @artist.update(artist: true)
      redirect to('/user/account/'.concat(@user.id().to_s()))
    end
  else
    erb :error
  end
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
    @user = User.new(fname: fname, lname: lname, street: street, city: city, state: state, zip: zip, username: username, password: pword, current: false)
    if @user.save
      @user.update(current: true)
      redirect to('/user/account/'.concat(@user.id().to_s()))
    end
  else
    erb :error
  end
end
