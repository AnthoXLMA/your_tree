class RentalsController < ApplicationController
  def new
    @tree = Tree.find(params[:tree_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)

    @tree = Tree.find(params[:tree_id])
    @rental.tree = @tree

    if @rental.save
      redirect_to user_path(@tree)
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_on, :end_on, :total_price, :status, :tree_id)
  end
end
