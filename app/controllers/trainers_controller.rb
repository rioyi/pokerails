class TrainersController < ApplicationController
  # GET /post
  def index
    render json: Trainer.all
  end
end
