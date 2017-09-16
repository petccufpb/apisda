class V1::ReportsController < ApplicationController
  def index
    @reports = Report.all

    render json: @reports, status: :ok
  end

  def create
    @report = Report.new(report_params)
    
    @report.save
    render json: @report, status: :created
  end

  def destroy
    @report = Report.where(id: params[:id]).first

    if @report.destroy 
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def show
    @report = Report.where(id: params[:id]).first

    if @report != nil 
      render json: @report, status: :ok
    else
      head(:not_found)
    end
  end

  private
  
  def report_params
    params.require(:report).permit(:title, :body, :images)
  end
end
