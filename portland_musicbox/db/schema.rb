# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161220221845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string  "name"
    t.string  "credits"
    t.integer "artist_id"
    t.string  "format"
    t.string  "album_photo_name"
    t.string  "embed_album"
    t.string  "music_embed"
    t.integer "label_id"
  end

  create_table "albums_tracks", force: :cascade do |t|
    t.integer "album_id"
    t.integer "track_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.string  "artist_photo_name"
    t.string  "profile_photo"
  end

  create_table "artists_labels", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "label_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "album_id"
    t.integer "user_id"
    t.string  "text"
  end

  create_table "formats", force: :cascade do |t|
    t.string "type"
  end

  create_table "labels", force: :cascade do |t|
    t.string  "name"
    t.integer "est_date"
  end

  create_table "merchandises", force: :cascade do |t|
    t.integer "album_id"
    t.integer "format_id"
    t.integer "quantity"
    t.decimal "price"
  end

  create_table "purchases", force: :cascade do |t|
    t.date    "date"
    t.integer "total"
  end

  create_table "purchases_users", force: :cascade do |t|
    t.integer "purchase_id"
    t.integer "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "album_id"
    t.string  "author"
    t.string  "text"
  end

  create_table "tags", force: :cascade do |t|
    t.integer "album_id"
    t.string  "text"
  end

  create_table "tracks", force: :cascade do |t|
    t.string  "name"
    t.integer "track_number"
    t.integer "album_id"
    t.integer "artist_id"
    t.string  "track_length"
  end

  create_table "users", force: :cascade do |t|
    t.string  "fname"
    t.string  "lname"
    t.string  "street"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "username"
    t.string  "password"
    t.boolean "current"
    t.boolean "admin"
    t.boolean "editor"
    t.integer "artist_id"
  end

end
