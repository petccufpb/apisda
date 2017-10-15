class Api::V1::VideosController < ApplicationController
  def index
    @videos = Video.all

    render json: @videos, status: :ok
  end

  def create
    @video = Video.new(video_params)

    @video.save
    render json: @video, status: :created
  end

  def destroy
    @video = Video.find(params[:id])

    if @video.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @video = Video.find(params[:id])

    if @video.update(video_params)
      render json: @video, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  def show
    @video = Video.find(params[:id])

    if @video != nil
      render json: @video, status: :ok
    else
      head(:not_found)
    end
  end

  private
  # private methods
    def video_params
      params.require(:video).permit(:title, :description, :url, :wallpaper)
    end
end
