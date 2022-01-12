class Admin::DashboardController < ApplicationController
  # admin show how many products and categories
  def show
    @products = Product.order(id: :desc).all
    @categories = Category.order(id: :desc).all
  end
end
