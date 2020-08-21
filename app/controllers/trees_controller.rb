class TreesController < ApplicationController
  before_action :set_tree, only: [:show]

  def index
    @trees = Tree.geocoded
    @markers = @trees.map do |tree|
      {
        lat: tree.latitude,
        lng: tree.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tree: tree })
      }
    end
  end

  def new
    @tree = Tree.new

  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to owner_trees_path
    else
      render :new
    end
  end

  def show
    @rental = Rental.new
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :description, :species, :address, :size, :weight, :price, :user_id, :photo)
  end
end
