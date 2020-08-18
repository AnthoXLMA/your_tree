class TreesController < ApplicationController
<<<<<<< HEAD

  def index
    @trees = Tree.all
  end
end
=======
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
>>>>>>> 4f40a0603dc754c706534ecf7ac921db974ae3c6
