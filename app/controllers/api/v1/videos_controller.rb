class Api::V1::VideosController < ApplicationController
  def index
    @videos = Videos.all

    render json: @videos, status: :ok
  end

  def show
  
  end
end
