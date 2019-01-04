class AnswersController < ApplicationController

  def create
      answer = Answer.find_or_create_by(answer_params)
      render json: answer
  end

  def update
      Answer.find(params[:id]).update(answer_params)
      render json: Answer.find(params[:id])
  end

  def destroy
      render json: Answer.find(params[:id]).destroy
  end

  private
  def answer_params
      params.require(:answer).permit(:text, :user_id, :question_id)
  end
end
