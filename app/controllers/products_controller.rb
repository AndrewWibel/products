class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @comments = Product.find(params[:id]).comment
  end

  def new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def comment
    @comment = Comment.create(commentable:Product.find(params[:id]), body:params[:body])
    redirect_to '/products'
  end

  def all_comments
    @comments = Comment.all
  end

  def create
    @product = Product.create(name:params[:name], description:params[:description], pricing:params[:pricing], category_id:params[:category_id])
    redirect_to '/products'
  end

  def update
    @product = Product.find(params[:id])
    @product.update(name:params[:name], description:params[:description], pricing:params[:pricing], category_id:params[:category_id])
    redirect_to '/products'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to '/products'
  end
end
