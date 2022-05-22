# frozen_string_literal: true

require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ages", with: @book.ages
    fill_in "Description", with: @book.description
    fill_in "Dimension x", with: @book.dimension_x
    fill_in "Dimension y", with: @book.dimension_y
    fill_in "Dimension z", with: @book.dimension_z
    fill_in "Format", with: @book.format_id
    fill_in "Language", with: @book.language
    fill_in "Publication date", with: @book.publication_date
    fill_in "Rating", with: @book.rating
    fill_in "Rating count", with: @book.rating_count
    fill_in "Title", with: @book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ages", with: @book.ages
    fill_in "Description", with: @book.description
    fill_in "Dimension x", with: @book.dimension_x
    fill_in "Dimension y", with: @book.dimension_y
    fill_in "Dimension z", with: @book.dimension_z
    fill_in "Format", with: @book.format_id
    fill_in "Language", with: @book.language
    fill_in "Publication date", with: @book.publication_date
    fill_in "Rating", with: @book.rating
    fill_in "Rating count", with: @book.rating_count
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
