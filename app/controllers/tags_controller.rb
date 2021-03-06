class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  # def create
  #   @walk = Walk.find(params[:walk_id])
  #   @tag = @walk.tags.create(tag_params.merge(walk_id: walk.id))
  # end

  def destroy
    @walk = Walk.find(params[:walk_id])
    @tag = @walk.tags.find(params[:id])
    @tag.destroy
    redirect_to walk_path(@walk)
  end

  # private
  # def comment_params
  #   params.require(:tag).permit(:commenter, :body)
  # end
end
