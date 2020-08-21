module Owner
  class TreesController < ApplicationController
    def index
      @trees = current_user.trees
    end
  end
end
