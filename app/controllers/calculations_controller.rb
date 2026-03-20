class CalculationsController < ApplicationController
  def new
    @calculation = Calculation.new
  end

  def create
  end

  def show
    @calculation = Calculation.find(params[:id])
  end
end
