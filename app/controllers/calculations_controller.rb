class CalculationsController < ApplicationController
  def new
    @calculation = Calculation.new
  end

  def create
    @calculation = Calculation.new(calculation_params)

    @calculation.solution = "Pending"
    @calculation.tree = { status: "Not parsed" }

    if @calculation.save
      redirect_to calculation_path(@calculation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @calculation = Calculation.find(params[:id])
  end

  def calculation_params
    params.require(:calculation).permit(:equation)
  end
end
