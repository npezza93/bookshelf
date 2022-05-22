# frozen_string_literal: true

require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: {
        ages: @book.ages, description: @book.description,
        format_id: @book.format_id, language: @book.language,
        publication_date: @book.publication_date, rating: @book.rating,
        rating_count: @book.rating_count, title: @book.title
      } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: {
      ages: @book.ages, description: @book.description,
      format_id: @book.format_id, language: @book.language,
      publication_date: @book.publication_date, rating: @book.rating,
      rating_count: @book.rating_count, title: @book.title
    } }

    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    delete book_url(@book)

    assert_redirected_to books_url
  end
end
