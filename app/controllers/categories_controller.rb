class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @types = Category.types
  end

  def create
    @category = Category.new(category_params)
    @category.save

    redirect_to @category
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_type)
  end

end
