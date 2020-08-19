class RentalsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user_id = current_user
    @rental.total_price = 200
    @tree = Tree.find(params[:tree_id])
    # @rental.tree = @tree
    raise

    if @rental.save
      raise
      redirect_to user_path(@tree)
    else
      render :new
    end
  end

  # def total_price
  #   total_price = @
  # end

  private

  def rental_params
    params.require(:rental).permit(:start_on, :end_on, :total_price, :status, :tree_id)
  end
end
