class TrainersController < ApplicationController
  # GET /post
  def index
    @trainer = Trainer.all
    render json: @trainer, status: :ok
  end
end
