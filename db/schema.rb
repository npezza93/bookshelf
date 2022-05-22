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

ActiveRecord::Schema[7.0].define(version: 2022_05_22_192149) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "books_count"
    t.index ["uuid"], name: "index_authors_on_uuid"
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_book_authors_on_author_id"
    t.index ["book_id"], name: "index_book_authors_on_book_id"
  end

  create_table "book_categories", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_categories_on_book_id"
    t.index ["category_id"], name: "index_book_categories_on_category_id"
  end

  create_table "books", force: :cascade do |t|
    t.text "description"
    t.string "language"
    t.string "title"
    t.integer "rating_count"
    t.float "rating"
    t.date "publication_date"
    t.string "ages"
    t.integer "format_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "uuid"
    t.string "image_url"
    t.index ["format_id"], name: "index_books_on_format_id"
    t.index ["uuid"], name: "index_books_on_uuid", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "books_count"
    t.index ["uuid"], name: "index_categories_on_uuid"
  end

  create_table "formats", force: :cascade do |t|
    t.integer "uuid"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uuid"], name: "index_formats_on_uuid"
  end

end
