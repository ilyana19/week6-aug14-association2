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

ActiveRecord::Schema.define(version: 2018_08_14_200528) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_users", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "user_id", null: false
    t.index ["article_id", "user_id"], name: "index_articles_users_on_article_id_and_user_id"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.string "date"
    t.integer "user_id"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films_viewers", id: false, force: :cascade do |t|
    t.integer "viewer_id", null: false
    t.integer "film_id", null: false
    t.index ["viewer_id", "film_id"], name: "index_films_viewers_on_viewer_id_and_film_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
