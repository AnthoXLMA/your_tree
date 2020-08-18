class TreesController < ApplicationController
  before_action :set_tree, only: [:show]

  def index
    @trees = Trees.all
  end

  # def new
  # end

  # def create
  # end

  def show
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :species, :address, :size, :weight, :description, :price)
  end
end

# photo: []
