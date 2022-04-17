# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_17_023755) do

  create_table "games", charset: "utf8mb4", force: :cascade do |t|
    t.integer "status"
    t.integer "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programing_languages", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_color"
    t.integer "created_year"
    t.integer "lang_type"
    t.string "framework"
    t.string "keyword"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "progresses", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "question_id"
    t.integer "answer"
    t.integer "sequence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_progresses_on_game_id"
    t.index ["question_id"], name: "index_progresses_on_question_id"
  end

  create_table "questions", charset: "utf8mb4", force: :cascade do |t|
    t.text "content"
    t.string "algorithm"
    t.string "eval_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "progresses", "games"
  add_foreign_key "progresses", "questions"
end
