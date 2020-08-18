class TreesController < ApplicationController

before_action :set_tree, only: [:show]
  def index
    @trees = Tree.all
  end

  def show
  end

  private

  def set_tree
    @tree = Tree.find(params[:id])
  end

  def tree_params
    params.require(:tree).permit(:name, :description, :name, :species, :address, :size, :weight, :description, :price, :user_id, :photo [])
  end
end
