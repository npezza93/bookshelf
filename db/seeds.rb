# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "csv"
require "json"

Format.insert_all(CSV.read(Rails.root.join("db/archive/formats.csv"), headers: true).map do |row|
  { uuid: row["format_id"], name: row["format_name"] }
end)
Rails.logger.debug "inserted formats"

Author.insert_all(CSV.read(Rails.root.join("db/archive/authors.csv"), headers: true).map do |row|
  { uuid: row["author_id"], name: row["author_name"] }
end)
Rails.logger.debug "inserted authors"

Category.insert_all(CSV.read(Rails.root.join("db/archive/categories.csv"), headers: true).map do |row|
  { uuid: row["category_id"], name: row["category_name"] }
end)
Rails.logger.debug "inserted categories"

books = []
CSV.foreach("db/archive/dataset.csv", headers: true) do |row|
  books.push({ description: row["description"], language: row["lang"],
               title: row["title"], rating_count: row["rating-count"],
               image_url: row["image-url"], rating: row["rating-avg"],
               publication_date: row["publication-date"], ages: row["for-ages"],
               format_id: row["format"], uuid: row["id"] })
end

Rails.logger.debug "collected books"
Book.insert_all(books)

authors = []
CSV.foreach("db/archive/dataset.csv", headers: true) do |row|
  row["authors"][1..-2].split(",").map do |author_id|
    authors.push({ book_id: row["id"], author_id: })
  end
end

Rails.logger.debug "collected book authors"
BookAuthor.insert_all(authors)

categories = []
CSV.foreach("db/archive/dataset.csv", headers: true) do |row|
  row["categories"][1..-2].split(",").map do |category_id|
    categories.push({ book_id: row["id"], category_id: })
  end
end

Rails.logger.debug "collected book cats"
BookCategory.insert_all(categories)
