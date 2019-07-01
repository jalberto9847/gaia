class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
    @types = Category.types
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
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

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :category_type)
  end
end
