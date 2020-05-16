class BooksController < ApplicationController
  before_action :is_tourist, except: [:index, :show]
  def index
    @book_categories = if current_user
      current_user.manager.item_categories.find_by(cite_key: 'book').children
    else
      Manager.first.item_categories.find_by(cite_key: 'book').children
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def pick_up
    book = Book.find(params[:book_id])
    return render json: {success: false, msg: '库存不足'} unless book.stock > 0
    if current_user.balance >= book.price
      order = book.orders.new(pick_up_at: params[:pick_up_at], pick_up_token: params[:pick_up_token], user_id: current_user.id, status: 'paid' )
      if order.save
        current_user.points_records.new(points: "-#{book.price}", balance: current_user.balance, title: "借阅#{book.name}", brief: "借阅#{book.name}花费#{book.price}德分").save
        order.send_message_book
        book.update(stock: book.stock - 1 )
        render json: {success: true, id: order.id}
      else
        render json: {success: false, msg: order.errors.as_json}
      end
    else
      render json: {success: false, msg: '德分不足'}
    end
  end

  def order_params
    params.require(:book).permit(:pick_up_at, :pick_up_token)
  end
end
