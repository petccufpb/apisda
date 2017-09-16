class V1::ReportsController < ApplicationController
  def index
    @reports = Report.all

    render json: @reports, status: ok
  end
end
