require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/new_review" do
  @user = User.where(current: true)
  @artists = Artist.all()
  @artist = nil
  erb :new_review
end

post "/new_review" do
  @user = User.where(current: true)
  @artists = Artist.all()
  @artist = Artist.find(params.fetch("artist_id").to_i()) rescue nil
  erb :new_review
end

get "/reviews" do
  @user = User.where(current: true)
  @reviews = Review.all()
  @artist = Artist.all()
  erb :reviews
end

post "/reviews" do
  @user = User.where(current: true)
  album_id = params.fetch("album_id").to_i()
  review_text = params.fetch("review_text")
  reviewer_name = params.fetch("reviewer_name")
  review = Review.create({:album_id => album_id, :author => reviewer_name, :text => review_text})
  @reviews = Review.all()
  erb :reviews
end

get '/' do
<<<<<<< HEAD
  @user = User.find_by(current: true)
=======
>>>>>>> 2990dc9ca31127ed889e09135185e7409bea8cdd
  erb :index
end

get "/form_test" do
  erb :form_test
end

get '/:login' do
  @user = User.find_by(current: true)
  @form = params["login"]
  erb :entry_form
end

post '/login/user' do
  @user = User.find_by(username: params["login"])
  if @user.password == params["pword"]
    @user.update(current: true)
    id = @user.id
    @artist = Artist.find(id)
    erb :user_dash
  else
    redirect to("/login")
  end
end

get "/logout/:id" do
  @user = User.find_by(current: true)
  @user.update(current: false)
  redirect("/")
end

get "/user/account/:id" do
  @user = User.find_by({:current => true})
  @artist = Artist.find(@user.id)
  erb :user_dash
end

get "/album/new" do
  @form = "album"
  @user = User.find_by({:current => true})
  id = @user.id
  @artist = Artist.find(id)
  erb :user_dash
end

post "/album/new" do
  @user = User.find_by({:current => true})
  @artist = Artist.find(@user.id)
  @artist.albums.push(Album.create(:name => params['name'], credits: params["credits"], album_photo_name: params["album_art"]))
  @album = Album.find_by(:name => params["name"])
  tracks = params["tracks"]
  tracks.each do |t|
    new_track = Track.create(name: t, track_number: tracks.index(t) + 1, artist_id: @artist.id)
    @album.tracks.push(new_track)
  end
  redirect("user/account/:id")
end


get '/:user/new' do
  @user = User.find_by({:current => true})
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
    @user = User.new(fname: fname, lname: lname, street: street, city: city, state: state, zip: zip, username: username, password: pword, current: false)
    if @user.save
      @user.update(current: true)
      id = @user.id
      @artist = Artist.new(name: artist, user_id: id)
      @artist.save
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

get "/form_test" do
  erb :form_test
end

post '/save_image' do

  @filename = params[:file][:filename]
  file = params[:file][:tempfile]
binding.pry
  File.open("./public/#{@filename}", 'wb') do |f|
    f.write(file.read)
  end

  erb :show_image
end
