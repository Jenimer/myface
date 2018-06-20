class FacesController < ApplicationController
  before action :set_face, only: [:show, :update, :destroy]
  def index
    render json: current_user.face
  end

  def show
    render json: @face
  end

  def update
    face = @face
    if @face.update(face_params)
      render json: @face
    else
      render json: errors
    end
  end

  def create
    face = Face.new(face_params)
    if Face.save
      render json: @face
    else
      render json: errors
    end
  end

  def destroy
    @face.destroy
  end

  private

  def set_face
    @face = current_user.face.find(params[:id])
  end

  def face_params
    params.require(:face).permit(:name, :bio, :likes, :dislikes)
  end

end
