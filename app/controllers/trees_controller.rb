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
