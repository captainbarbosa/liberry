require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def test_book_can_be_created
    author = Author.create(name: "Bob")
    book = Book.create(title: "A Book", description: "A great read", author_id: author.id )

    assert_equal true, book.valid?
    assert_equal "A great read", book.description
  end
end
