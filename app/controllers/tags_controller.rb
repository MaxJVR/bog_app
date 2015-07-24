class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
    Tag.create(tag_params)

    redirect_to tags_path
  end

  def update
    t = Tag.find params[:id]
    t.update tag_params

    redirect_to t
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def destroy
    Tag.find(params[:id]).delete
    redirect_to tags_path

  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
