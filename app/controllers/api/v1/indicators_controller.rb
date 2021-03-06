class Api::V1::IndicatorsController < ApplicationController
  def index
    @indicators = Indicator.all

    render json: @indicators, status: :ok
  end

  def create
    @indicator = Indicator.new(indicators_params)

    @indicator.save
    render json: @indicator, status: :ok
  end

  def destroy
    @indicator = Indicator.find(params[:id])

    if @indicator.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @indicator = Indicator.find(params[:id])
    
    if @indicator.update(indicators_params)
      render json: @indicator, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  def show
    @indicator = Indicator.find(params[:id])

    if @indicator != nil
      render json: @indicator, status: :ok
    else
      head(:not_found)  
    end
  end

  private
  # private methods
    def indicators_params
      params.require(:indicator).permit(:name, :description, :metric, :status, samples: [:value, :date])
    end
end
