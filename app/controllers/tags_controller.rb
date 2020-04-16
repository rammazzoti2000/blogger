class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tags = Tag.find(params[:id])
    @tags.destroy
    flash.notice = "Tag '#{@tags.name}' Deleted!"

    redirect_to articles_path
  end

  def tag_params
    params.require(:tag).permit(:name)
  end
end
