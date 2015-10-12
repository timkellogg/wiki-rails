class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy, :edit]

  def index
    @categories = Category.all.order(name: :asc)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def destroy
    @category.delete
    redirect_to categories_path
  end

  def edit
  end

  def update

    if @category.update_attributes(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  private

    def category_params
      params.require(:category).permit(:name, :img)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end
