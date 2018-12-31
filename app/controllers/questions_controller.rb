class QuestionsController < ApplicationController
  def index
      render json: Question.all
  end

  def show
      render json: Question.find(params[:id])
  end

  def create
      render json: Question.find_or_create_by(Question_params)
  end

  def update
      Question.find(params[:id]).update(event_params)
      render json: Question.find(params[:id])
  end

  def destroy
      render json: Question.find(params[:id]).destroy
  end

  private
  def question_params
      params.require(:question).permit(:text)
  end
end
