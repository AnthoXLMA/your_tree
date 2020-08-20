module Owner
  class TreesController < ApplicationController
    def index
      @trees = current_user.trees
    end

    def new
      @tree = Tree.new
    end

    def create
      @tree = Tree.new(tree_params)
    end

    private

    def tree_params
      params.require(:tree).permit(:name, :description, :species, :address, :size, :weight, :price, :user_id, :photo [])
    end
  end
end
