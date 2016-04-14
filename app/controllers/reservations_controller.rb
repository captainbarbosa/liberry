class ReservationsController < ApplicationController
  def index
    @reservation  = Reservation.all
  end

  def new
    @book = Book.find(params[:book_id])
    @reservation = Reservation.new(book_id: @book.id)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)

    redirect_to action: "index"
  end

  def create
    @reservation = Reservation.create(reservation_params)

    redirect_to action: "index"
  end

  def destroy
    Reservation.find(params[:id]).destroy

   redirect_to action: "index"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:book_id, :checkout_date, :due_date, user_attributes: [:name])
  end
end
