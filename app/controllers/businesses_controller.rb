class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :destroy, :update]

  def index
    @businesses = Business.all.order(name: :desc)
  end

  def search_results
    if params[:category]
      @businesses = Category.find(params[:category]).businesses.select{ |business| business.name.downcase.include?(params[:search].downcase)}
    else
      @businesses = Business.all.select{ |business| business.name.downcase.include?(params[:search].downcase)}
    end
  end

  def show
  end

  def new
    @business   = Business.new
    @categories = Category.all
  end

  def create
    @business = Business.new(business_params)
    @business.category_id = business_params[:category_id]
    if @business.save
      redirect_to @business
    else
      render :new
    end
  end

  def edit
    @categories = Category.all.order(name: :asc)
  end

  def update
    if @business.update_attributes(business_params)
      redirect_to @business
    else
      render :edit
    end
  end

  def destroy
    @business.delete
    redirect_to businesses_path
  end

  private

    def business_params
      params.require(:business)
        .permit(:name,
                :img,
                :mailing_address,
                :mailing_city,
                :mailing_state,
                :mailing_zip,
                :street_address,
                :street_city,
                :street_state,
                :street_zip,
                :url,
                :phone,
                :fax,
                :description,
                :img,
                :hours_of_operation,
                :category_id)
    end

    def set_business
      @business = Business.find(params[:id])
    end

end
