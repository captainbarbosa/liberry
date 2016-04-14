require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  def test_reservation_can_be_created
    author = Author.create(name: "Bob")
    book = Book.create(title: "A Book", description: "This is a good book", author_id: author.id )

    reservation = Reservation.create(book_id: book.id)

    assert_equal true, reservation.valid?
    assert_equal true, reservation.book_id?
    assert_equal "This is a good book", reservation.book.description
  end
end
