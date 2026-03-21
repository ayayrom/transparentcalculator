class CalculationsController < ApplicationController
  def new
    @calculation = Calculation.new
  end

  def create
    @calculation = Calculation.new(calculation_params)

    # @calculation.solution = "Pending"
    # @calculation.tree = { status: "Not parsed" }

    if @calculation.save
      parser = EquationParser.new(@calculation.equation)

      parsed_data = parser.process

      @calculation.update(
        solution: parsed_data[:error] || parsed_data[:final_answer],
        tree: parsed_data
      )

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
